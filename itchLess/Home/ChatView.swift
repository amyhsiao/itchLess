//
//  ChatView.swift
//  itchLess
//
//  Created by Amy Hsiao on 2024/7/17.
//

import SwiftUI

struct ChatView: View {
    @State private var userInput: String = ""
    @State private var doctorText: String = "你好! 我是你的個人小助理，如果有任何問題的話都可以詢問我或跟我討論喔~"
    @State private var outputText: String = ""
    @State private var outputTitle: String = ""
    @State private var isLoading: Bool = false
    @State private var showOutputContainer: Bool = false
    @State private var showViewPitchButton: Bool = false
    @State private var showInputField: Bool = true
    @State private var showDoctorBubble: Bool = true

    var body: some View {
        VStack(spacing: 0) {
            // Header with logo and title
            HStack {
                Image("e") // 確保 e.png 添加到 Assets.xcassets
                    .resizable()
                    .frame(width: 40, height: 40)
                    .clipShape(Circle())
                    .shadow(radius: 4)
                Text("EtchingCare")
                    .font(.system(size: 24, weight: .bold))
                    .foregroundColor(.black)
            }
            .padding()
            .frame(maxWidth: .infinity)
            .background(Color.white)

            Spacer()
            
            // Main setup container with smooth transitions
            VStack(spacing: 30) {
                if showDoctorBubble {
                    HStack(alignment: .top, spacing: 15) {
                        Image("doctor") // 確保 doctor.png 添加到 Assets.xcassets
                            .resizable()
                            .frame(width: 80, height: 140)
//                            .clipShape(Circle())
                            .shadow(radius: 4)
                        
                        Text(doctorText)
                            .padding(12)
                            .background(Color.white)
                            .cornerRadius(15)
                            .overlay(
                                RoundedRectangle(cornerRadius: 15)
                                    .stroke(Color.gray, lineWidth: 1)
                            )
                            .frame(maxWidth: 250, alignment: .leading)
                            .multilineTextAlignment(.leading)
                            .shadow(radius: 2)
                            .overlay(Triangle()
                                        .fill(Color.gray)
                                        .frame(width: 15, height: 15)
                                        .rotationEffect(.degrees(45))
                                        .offset(x: -10, y: 10), alignment: .topLeading)
                            .transition(.opacity.combined(with: .scale)) // Smooth transition
                            .animation(.easeInOut, value: showDoctorBubble)
                    }
                }

                if isLoading {
                    ProgressView("載入中...")
                        .transition(.opacity)
                        .animation(.easeInOut, value: isLoading)
                }

                // User input area with smooth transition
                if showInputField {
                    HStack(spacing: 0) {
                        TextField("輸入您的問題...", text: $userInput)
                            .padding(12)
                            .background(Color(UIColor.systemGray5))
                            .cornerRadius(15, corners: [.topLeft, .bottomLeft])
                            .overlay(
                                RoundedRectangle(cornerRadius: 15)
                                    .stroke(Color.gray, lineWidth: 1)
                            )
                            .foregroundColor(.black)
                        
                        Button(action: handleSend) {
                            Image("send-btn-icon") // 確保 send-btn-icon.png 添加到 Assets.xcassets
                                .resizable()
                                .frame(width: 30, height: 30)
                                .padding(12)
                                .background(Color.pink)
                                .cornerRadius(15, corners: [.topRight, .bottomRight])
                                .foregroundColor(.white)
                                .shadow(radius: 2)
                        }
                        .buttonStyle(ScaleButtonEffect()) // Button animation effect
                    }
                    .transition(.move(edge: .bottom).combined(with: .opacity))
                    .animation(.easeInOut, value: showInputField)
                }

                if showViewPitchButton {
                    Button("查看更多資訊") {
                        withAnimation {
                            showOutputContainer.toggle()
                            showViewPitchButton = false
                            showDoctorBubble = false
                        }
                    }
                    .padding()
                    .background(Color.pink)
                    .foregroundColor(.white)
                    .cornerRadius(15)
                    .shadow(radius: 3)
                    .buttonStyle(ScaleButtonEffect()) // Button animation effect
                    .transition(.opacity)
                }

                if showOutputContainer {
                    ScrollView {
                        VStack(spacing: 20) {
                            Text(outputTitle)
                                .font(.title)
                                .padding()
                            Text(outputText)
                                .padding()
                                .background(Color(UIColor.systemGray5))
                                .cornerRadius(15)
                                .frame(maxWidth: .infinity, alignment: .leading)
                                .shadow(radius: 2)

                            Button("再次詢問") {
                                resetView()
                            }
                            .padding()
                            .background(Color.pink)
                            .foregroundColor(.white)
                            .cornerRadius(15)
                            .shadow(radius: 3)
                            .buttonStyle(ScaleButtonEffect()) // Button animation effect
                        }
                        .padding()
                        .background(Color(UIColor.systemGray6))
                        .cornerRadius(15)
                        .shadow(radius: 3)
                    }
                    .padding(.horizontal, 20)
                    .transition(.slide) // Smooth transition for output container
                }
            }
            .padding()
            .background(Color(UIColor.systemGray6))
            .cornerRadius(20)
            .padding(.horizontal, 20)
            .shadow(radius: 3)

            Spacer()

            // Footer section
            HStack {
                Text("© 2023 EtchingCare All rights reserved")
                    .font(.footnote)
                    .foregroundColor(.gray)
            }
            .padding()
            .frame(maxWidth: .infinity)
            .background(Color.white)
        }
        .background(Color(UIColor.systemGray6).edgesIgnoringSafeArea(.all))
    }

    // 發送請求
    func handleSend() {
        guard !userInput.trimmingCharacters(in: .whitespaces).isEmpty else { return }
        isLoading = true
        doctorText = "好的，請稍等一下，讓我處理一下這些資訊..."
        showInputField = false // 隱藏輸入匡

        // First API call
        fetchData(url: "http://192.168.0.73:3000/api/chat/symptom", userInput: userInput) { response in
            doctorText = response ?? "發生錯誤，請稍後再試"
            
            // Second API call
            fetchData(url: "http://192.168.0.73:3000/api/chat/synopsis", userInput: userInput) { synopsis in
                outputText = synopsis ?? "無法取得摘要"
                
                // Third API call
                if let synopsisMessage = synopsis {
                    fetchData(url: "http://192.168.0.73:3000/api/chat/synopsis_title", userInput: synopsisMessage) { title in
                        outputTitle = title ?? "無法取得標題"
                        showViewPitchButton = true
                        isLoading = false
                    }
                } else {
                    isLoading = false
                }
            }
        }
    }

    // 重置視圖
    func resetView() {
        userInput = ""
        doctorText = "你好! 我是你的個人小助理，如果有任何問題的話都可以詢問我或跟我討論喔~"
        outputText = ""
        outputTitle = ""
        showOutputContainer = false
        showViewPitchButton = false
        showInputField = true
        showDoctorBubble = true
    }

    // Fetch API 方法
    func fetchData(url: String, userInput: String, completion: @escaping (String?) -> Void) {
        guard let requestUrl = URL(string: url) else { return }
        
        var request = URLRequest(url: requestUrl)
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "Content-Type")
        request.httpBody = try? JSONEncoder().encode(["message": userInput])
        
        URLSession.shared.dataTask(with: request) { data, response, error in
            DispatchQueue.main.async {
                if let error = error {
                    print("錯誤:", error.localizedDescription)
                    completion(nil)
                    return
                }
                
                if let data = data, let decodedResponse = try? JSONDecoder().decode([String: String].self, from: data), let reply = decodedResponse["reply"] {
                    completion(reply)
                } else {
                    completion(nil)
                }
            }
        }.resume()
    }
}

// Triangle for chat bubble arrow
struct Triangle: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        path.move(to: CGPoint(x: rect.minX, y: rect.minY))
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.minY))
        path.addLine(to: CGPoint(x: rect.minX, y: rect.maxY))
        path.closeSubpath()
        return path
    }
}

// Custom button style for subtle scaling effect
struct ScaleButtonEffect: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .scaleEffect(configuration.isPressed ? 0.95 : 1.0)
            .animation(.easeInOut, value: configuration.isPressed)
    }
}

// 擴展以允許單邊圓角設置
extension View {
    func cornerRadius(_ radius: CGFloat, corners: UIRectCorner) -> some View {
        clipShape(RoundedCorner(radius: radius, corners: corners))
    }
}

struct RoundedCorner: Shape {
    var radius: CGFloat = .infinity
    var corners: UIRectCorner = .allCorners
    
    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(
            roundedRect: rect,
            byRoundingCorners: corners,
            cornerRadii: CGSize(width: radius, height: radius)
        )
        return Path(path.cgPath)
    }
}

struct ChatResponse: Codable {
    let reply: String
}

#Preview {
    ChatView()
}
