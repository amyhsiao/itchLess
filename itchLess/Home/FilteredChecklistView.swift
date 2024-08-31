import SwiftUI

struct FilteredChecklistView: View {
    @EnvironmentObject var checklistManager: ChecklistManager
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: true) {
            VStack(spacing: 10) {
                ForEach(checklistManager.checkedItems) { item in
                    HStack {
                        Image(systemName: item.isCompleted ? "checkmark.square" : "square")
                            .onTapGesture {
                                !item.isCompleted ? checklistManager.toggleCompleted(item) : nil
                            }
                            .scaledToFit()
                            .frame(width: 20)
                        
                        Text(item.title)
                            .foregroundColor(item.isCompleted ? .gray : .primary)
                        
                        Spacer()
                        
                        Image(item.TodoType)
                            .resizable()
                            .scaledToFit()
                            .frame(height: 30)
                            .padding(.trailing, 0)
                            .padding(.leading, -7)
                        
                        VStack(alignment: .center) {
                            Text(item.frequency.rawValue)
                                .font(.caption)
                                .foregroundColor(.secondary)
                            
                            if let lastCompletion = item.lastCompletionDate {
                                Text(relativeTimeString(from: lastCompletion))
                                    .font(.caption2)
                                    .foregroundColor(.secondary)
                            } else {
                                Text("Never")
                                    .font(.caption2)
                                    .foregroundColor(.secondary)
                            }
                        }
                        .frame(maxWidth: 60)
                        
                    }
                    .padding(.vertical, 5)
                    .padding(.horizontal, 5)
                    .cornerRadius(8) // Optional: Add corner radius for rounded corners
                    .background(
                        freqToColor(item.frequency)
                    )
                    .opacity(item.isCompleted ? 0.4 : 1)
                    //.shadow(radius: 1) // Optional: Add shadow for depth
                }
            }
            .padding() // Add padding to the VStack
        }
    }
    
    func relativeTimeString(from date: Date) -> String {
        let calendar = Calendar.current
        let now = Date()
        let components = calendar.dateComponents([.day, .weekOfYear, .month], from: date, to: now)
        
        if let days = components.day {
            if days == 0 {
                return "Today"
            } else if days == 1 {
                return "Yesterday"
            } else if days < 7 {
                return "\(days) days ago"
            }
        }
        
        if let weeks = components.weekOfYear {
            if weeks == 1 {
                return "Last week"
            } else if weeks < 4 {
                return "\(weeks) weeks ago"
            }
        }
        
        if let months = components.month {
            if months == 1 {
                return "Last month"
            } else if months < 12 {
                return "\(months) months ago"
            }
        }
        
        return "Long time ago"
    }
    
    func freqToColor(_ frequency: Frequency) -> Color {
        switch frequency {
            case .everyday:
                return Color(red: 232/256, green: 254/256, blue: 196/256)
            case .everyWeek:
                return Color(red: 209/256, green: 221/256, blue: 227/256)
            case .everyMonth:
                return Color(red: 254/256, green: 250/256, blue: 202/256)
            }
    }
}

struct FilteredChecklistView_Previews: PreviewProvider {
    static var previews: some View {
        FilteredChecklistView()
            .environmentObject(ChecklistManager())
    }
}
