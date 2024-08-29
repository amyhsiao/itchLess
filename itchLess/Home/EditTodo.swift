import SwiftUI

struct EditTodo: View {
    @EnvironmentObject var checklistManager: ChecklistManager
    let TodoType = ["editTodo-skin", "editTodo-drug", "editTodo-skin", "editTodo-skin", "editTodo-clean", "editTodo-clean", "editTodo-clean", "editTodo-clean"]

    var body: some View {
        VStack {
            Text("打造親子任務清單")
                .multilineTextAlignment(.center)
                .foregroundColor(Color(red: 0.3, green: 0.3, blue: 0.3))
                .font(.system(size: 24))
                .padding(.top, 20)
            
            ZStack(alignment: .center) {
                Image("editTodo-box-1")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 350, alignment: .center)
                
                VStack {
                    Text("建議每天")
                    ForEach(0..<4) { index in
                        let item = checklistManager.allItems[index]
                        HStack {
                            // Checkbox image
                            Image(systemName: item.isChecked ? "checkmark.square" : "square")
                                .onTapGesture {
                                    checklistManager.toggleChecked(item) // Toggle checked state
                                }
                                .frame(alignment: .leading)
                            
                            // List text
                            Text(item.title)
                                .font(.system(size: 18))
                                .foregroundColor(item.isChecked ? .black : .gray)
                            
                            // List type
                            Image(TodoType[index])
                                .resizable()
                                .scaledToFit()
                                .frame(height: 26)
                            
                            // Toggle frequency
                            
                            Text(item.frequency.rawValue) // Display current frequency
                                .onTapGesture{
                                    checklistManager.toggleFrequency(for: item)
                                }
                                .padding(5)
                                .background(Color.gray.opacity(0.2))
                                .cornerRadius(5)
                             
                            Spacer()
                        }
                        .padding(.vertical, 3)
                    }
                }
                .padding(.leading, 20)
                .frame(width: 350)
            }
            .frame(maxWidth: .infinity)
            
            Image("editTodo-box-2")
                .resizable()
                .scaledToFit()
                .frame(width: 350, alignment: .center)

            Image("editTodo-box-3")
                .resizable()
                .scaledToFit()
                .frame(width: 350, alignment: .center)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
    }
}

#Preview {
    EditTodo()
        .environmentObject(ChecklistManager())
}
