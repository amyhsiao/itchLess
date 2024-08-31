import SwiftUI

struct EditTodo: View {
    @EnvironmentObject var checklistManager: ChecklistManager

    var body: some View {
        VStack {
            Text("打造親子任務清單")
                .multilineTextAlignment(.center)
                .foregroundColor(Color(red: 0.3, green: 0.3, blue: 0.3))
                .font(.system(size: 24))
                .padding(.top, 20)
            
            //建議每天
            ZStack(alignment: .center) {
                Image("editTodo-box-1")
                    .resizable()
                    //.scaledToFit()
                    .frame(width: 350, height: 200, alignment: .center)
                
                VStack {
                    Text("建議每天")
                        .bold()
                    ForEach(0..<4) { index in
                        let item = checklistManager.allItems[index]
                        HStack {
                            // Checkbox image
                            Image(systemName: item.isChecked ? "checkmark.square" : "square")
                                .onTapGesture {
                                    checklistManager.toggleChecked(item)
                                }
                                .frame(width: 15, alignment: .leading)
                            
                            // List text
                            Text(item.title)
                                .font(.system(size: 18))
                                .foregroundColor(item.isChecked ? .black : .gray)
                                .frame(maxWidth: 115, alignment: .leading)
                            
                            // List type
                            Image(item.TodoType)
                                .resizable()
                                .scaledToFit()
                                .frame(height: 26)
                            
                            // Frequency Toggle
                            FrequencyToggleView(frequency: Binding(
                                get: { checklistManager.allItems[index].frequency },
                                set: { checklistManager.setFrequency(for: item, to: $0) }
                            ))
                            .frame(width: 120, alignment: .trailing)
                            .padding(.trailing, -10)
                            
                        }
                        .padding(.vertical, 3)
                    }
                }
                .padding(.leading, 0)
                .padding(.trailing, 8)
                .frame(width: 380)
            }
            .frame(maxWidth: .infinity)
            
            //建議每週
            ZStack(alignment: .center) {
                Image("editTodo-box-2")
                    .resizable()
                    //.scaledToFit()
                    .frame(width: 350, height: 120, alignment: .center)
                
                VStack {
                    Text("建議每週")
                        .bold()
                    ForEach(4..<6) { index in
                        let item = checklistManager.allItems[index]
                        HStack {
                            // Checkbox image
                            Image(systemName: item.isChecked ? "checkmark.square" : "square")
                                .onTapGesture {
                                    checklistManager.toggleChecked(item)
                                }
                                .frame(width: 15, alignment: .leading)
                            
                            // List text
                            Text(item.title)
                                .font(.system(size: 18))
                                .foregroundColor(item.isChecked ? .black : .gray)
                                .frame(maxWidth: 111, alignment: .leading)
                            
                            // List type
                            Image(item.TodoType)
                                .resizable()
                                .scaledToFit()
                                .frame(width: 85)
                                .padding(.trailing, 0)
                                .padding(.leading, -7)
                            
                            // Frequency Toggle
                            FrequencyToggleView(frequency: Binding(
                                get: { checklistManager.allItems[index].frequency },
                                set: { checklistManager.setFrequency(for: item, to: $0) }
                            ))
                            .frame(width: 120, alignment: .trailing)
                            .padding(.trailing, -10)
                            .padding(.leading, -7)
                            
                        }
                        .padding(.vertical, 3)
                    }
                }
                .padding(.leading, 0)
                .padding(.trailing, 8)
                .frame(width: 380)
            }
            .frame(maxWidth: .infinity)

            //建議每週
            ZStack(alignment: .center) {
                Image("editTodo-box-3")
                    .resizable()
                    //.scaledToFit()
                    .frame(width: 350, height: 120, alignment: .center)
                
                VStack {
                    Text("建議每月")
                        .bold()
                    ForEach(6..<8) { index in
                        let item = checklistManager.allItems[index]
                        HStack {
                            // Checkbox image
                            Image(systemName: item.isChecked ? "checkmark.square" : "square")
                                .onTapGesture {
                                    checklistManager.toggleChecked(item)
                                }
                                .frame(width: 15, alignment: .leading)
                            
                            // List text
                            Text(item.title)
                                .font(.system(size: 18))
                                .foregroundColor(item.isChecked ? .black : .gray)
                                .frame(maxWidth: 111, alignment: .leading)
                            
                            // List type
                            Image(item.TodoType)
                                .resizable()
                                .scaledToFit()
                                .frame(width: 85)
                                .padding(.trailing, 0)
                                .padding(.leading, -7)
                            
                            // Frequency Toggle
                            FrequencyToggleView(frequency: Binding(
                                get: { checklistManager.allItems[index].frequency },
                                set: { checklistManager.setFrequency(for: item, to: $0) }
                            ))
                            .frame(width: 120, alignment: .trailing)
                            .padding(.trailing, -10)
                            .padding(.leading, -7)
                            
                        }
                        .padding(.vertical, 3)
                    }
                }
                .padding(.leading, 0)
                .padding(.trailing, 8)
                .frame(width: 380)
            }
            .frame(maxWidth: .infinity)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
    }
}

struct FrequencyToggleView: View {
    @Binding var frequency: Frequency
    
    var body: some View {
        HStack(spacing: 0) {
            ForEach(Frequency.allCases) { freq in
                Button(action: {
                    withAnimation {
                        frequency = freq
                    }
                }) {
                    Text(freq.rawValue)
                        .font(.system(size: 14))
                        .padding(.vertical, 4)
                        .padding(.horizontal, 0)
                        .frame(maxWidth: .infinity)
                        .background(frequency == freq ? Color.secondary : Color.clear)
                        .foregroundColor(frequency == freq ? .white : .secondary)
                }
            }
        }
        .background(Color.blue.opacity(0.2))
        .cornerRadius(8)
        .padding(.horizontal, 0)
    }
}


#Preview {
    EditTodo()
        .environmentObject(ChecklistManager())
}
