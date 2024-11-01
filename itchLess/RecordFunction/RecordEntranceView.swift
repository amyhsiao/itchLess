//
//  RecordEntranceView.swift
//  AQIFunctionTest
//
//  Created by 張銘育 on 2024/9/8.
//

import SwiftUI
import Photos

struct RecordEntranceView: View {
    @Binding var isShowing : Bool
    @EnvironmentObject var scoreManager: ScoradManager
    @State private var image: UIImage?
    @State private var isCameraImagePickerShown = false
    @State private var isCameraImageSaved = false  // 狀態變量專為從相機保存的圖片
    @State private var showAlert = false
    @State private var alertMessage = ""

    var body: some View {
        VStack{
            VStack{
                Text("紀錄每一天")
                    .font(.system(size:30))
                    .foregroundColor(.black) // 數字顏色為白色
                    .frame(maxWidth: 300, alignment: .leading)
                    .padding(.top,10)
                //                Image("進入檢測")
                //                    .resizable().aspectRatio(contentMode: .fit)
                //                    .padding()
                NavigationLink(value: "SecondView") {
                    Image("進入檢測")
                        .resizable().aspectRatio(contentMode: .fit)
                        .padding()
                }
//                    
//                    Button(action: {
//                        //function for button: increase score
//                        scoreManager.resetScore()
//                    }) {
//                        Text("\(scoreManager.score)")
//                            .font(.title)
//                            .offset(x: -45, y: -5)
//                            .foregroundColor(Color(red:0.3, green: 0.3, blue: 0.3))
//                    }
                
                HStack{
                    Image("照片紀錄")
                        .resizable().aspectRatio(contentMode: .fit)
                        .onTapGesture {
                            isCameraImagePickerShown = true
                        }.sheet(isPresented: $isCameraImagePickerShown) {
                            CameraImagePicker(image: $image, isSaved: $isCameraImageSaved, showAlert: $showAlert, alertMessage: $alertMessage)
                        }
                    
                    Image("文字紀錄")
                        .resizable().aspectRatio(contentMode: .fit)
                    
                }
            }            
            .navigationDestination(for: String.self) { value in
                switch value {
                case "SecondView":
                    StepOneView(isShowing: $isShowing)
                default:
                    EmptyView()
                }
            }
            .navigationTitle("Home")
            .navigationBarHidden(true)
            Text("取消")
                .font(.title3)
                .foregroundColor(.secondary)
                .onTapGesture{
                    isShowing = false
                }
        }
        .padding()
        .background(RoundedRectangle(cornerRadius: 20).foregroundColor(Color(hex2:"FFD2AB")))
        .padding()
        .alert(isPresented: $showAlert) {
            Alert(title: Text("保存結果"), message: Text(alertMessage), dismissButton: .default(Text("OK")))
        
        }
    }
}

// 日期格式器
let dateFormatter: DateFormatter = {
    let formatter = DateFormatter()
    formatter.dateStyle = .short
    formatter.timeStyle = .short
    return formatter
}()

extension Color {
    init(hex2: String) {
        let hex = hex2.trimmingCharacters(in: CharacterSet.alphanumerics.inverted)
        var int: UInt64 = 0
        Scanner(string: hex).scanHexInt64(&int)
        let a, r, g, b: UInt64
        switch hex.count {
        case 3: // RGB (12-bit)
            (a, r, g, b) = (255, (int >> 8) * 17, (int >> 4 & 0xF) * 17, (int & 0xF) * 17)
        case 6: // RGB (24-bit)
            (a, r, g, b) = (255, int >> 16, int >> 8 & 0xFF, int & 0xFF)
        case 8: // ARGB (32-bit)
            (a, r, g, b) = (int >> 24, int >> 16 & 0xFF, int >> 8 & 0xFF, int & 0xFF)
        default:
            (a, r, g, b) = (255, 0, 0, 0)
        }
        self.init(
            .sRGB,
            red: Double(r) / 255,
            green: Double(g) / 255,
            blue: Double(b) / 255,
            opacity: Double(a) / 255
        )
    }
}

struct CameraImagePicker: UIViewControllerRepresentable {
    @Environment(\.presentationMode) var presentationMode
    @Binding var image: UIImage?
    @Binding var isSaved: Bool
    @Binding var showAlert: Bool
    @Binding var alertMessage: String

    func makeUIViewController(context: Context) -> UIImagePickerController {
        let picker = UIImagePickerController()
        picker.delegate = context.coordinator
        picker.sourceType = .camera
        return picker
    }

    func updateUIViewController(_ uiViewController: UIImagePickerController, context: Context) {}

    func makeCoordinator() -> Coordinator {
        Coordinator(self)
    }

    class Coordinator: NSObject, UINavigationControllerDelegate, UIImagePickerControllerDelegate {
        var parent: CameraImagePicker

        init(_ parent: CameraImagePicker) {
            self.parent = parent
        }

        func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey: Any]) {
            if let image = info[.originalImage] as? UIImage {
                parent.image = image
                saveImageToAlbum(image: image)
            }

            parent.presentationMode.wrappedValue.dismiss()
        }

        func saveImageToAlbum(image: UIImage) {
            let albumName = "每日膚況紀錄"
            
            // 查找是否已經存在該相簿
            var album: PHAssetCollection?
            let fetchOptions = PHFetchOptions()
            fetchOptions.predicate = NSPredicate(format: "title = %@", albumName)
            let collection = PHAssetCollection.fetchAssetCollections(with: .album, subtype: .any, options: fetchOptions)
            if let firstObject = collection.firstObject {
                album = firstObject
            }

            PHPhotoLibrary.shared().performChanges({
                let assetChangeRequest = PHAssetChangeRequest.creationRequestForAsset(from: image)
                let assetPlaceholder = assetChangeRequest.placeholderForCreatedAsset

                if let album = album {
                    // 如果相簿已經存在，則將圖片添加到相簿中
                    if let albumChangeRequest = PHAssetCollectionChangeRequest(for: album) {
                        let enumeration: NSArray = [assetPlaceholder!]
                        albumChangeRequest.addAssets(enumeration)
                    }
                } else {
                    // 如果相簿不存在，則創建新相簿並添加圖片
                    let albumChangeRequest = PHAssetCollectionChangeRequest.creationRequestForAssetCollection(withTitle: albumName)
                    let enumeration: NSArray = [assetPlaceholder!]
                    albumChangeRequest.addAssets(enumeration)
                }
            }, completionHandler: { success, error in
                DispatchQueue.main.async {
                    if success {
                        self.parent.alertMessage = "圖片成功保存到 \(albumName) 相簿中!"
                    } else {
                        self.parent.alertMessage = "圖片保存失敗: \(error?.localizedDescription ?? "未知錯誤")."
                    }
                    self.parent.showAlert = true
                    self.parent.isSaved = success
                }
            })
        }
    }
}



#Preview {
    RecordEntranceView(isShowing: .constant(true))
        .background(.yellow)
        .environmentObject(ScoradManager()) 
}

