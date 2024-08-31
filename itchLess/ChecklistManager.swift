import Foundation

enum Frequency: String, CaseIterable, Identifiable {
    case everyday = "每天"
    case everyWeek = "每週"
    case everyMonth = "每月"
    
    var id: String { self.rawValue }
}

struct ChecklistItem: Identifiable, Equatable {
    let id = UUID()
    let title: String
    let TodoType: String
    var isChecked: Bool
    var frequency: Frequency
    var lastCompletionDate: Date?
    var isCompleted: Bool
    
    init(title: String, isChecked: Bool, frequency: Frequency, type: String, lastCompletionDate: Date? = nil, completed: Bool = false) {
        self.title = title
        self.isChecked = isChecked
        self.frequency = frequency
        self.TodoType = type
        self.lastCompletionDate = lastCompletionDate
        self.isCompleted = completed
    }
}

class ChecklistManager: ObservableObject {
    @Published var allItems: [ChecklistItem] = [
        ChecklistItem(title: "洗完澡塗乳液", isChecked: true, frequency: .everyday, type: "editTodo-skin", lastCompletionDate: Date(timeIntervalSinceReferenceDate: 693996600)),
        ChecklistItem(title: "按時吃藥", isChecked: true, frequency: .everyday, type: "editTodo-drug", lastCompletionDate: Date(timeIntervalSinceReferenceDate: 69996600)),
        ChecklistItem(title: "出門前塗乳液", isChecked: true, frequency: .everyday, type: "editTodo-skin"),
        ChecklistItem(title: "擦拭汗水", isChecked: true, frequency: .everyday, type: "editTodo-skin"),
        ChecklistItem(title: "房間地板清理", isChecked: true, frequency: .everyWeek, type: "editTodo-clean"),
        ChecklistItem(title: "清洗被單", isChecked: true, frequency: .everyWeek, type: "editTodo-clean", lastCompletionDate: Date(timeIntervalSinceReferenceDate: 69996600), completed: true),
        ChecklistItem(title: "更換冷氣濾網", isChecked: true, frequency: .everyMonth, type: "editTodo-clean"),
        ChecklistItem(title: "房間窗簾換洗", isChecked: true, frequency: .everyMonth, type: "editTodo-clean")
    ]
    @Published var checkedItems: [ChecklistItem] = []
    
    init() {
            self.checkedItems = allItems // Assign allItems to checkedItems here
    }
    
    func toggleChecked(_ item: ChecklistItem) {
        if let index = checkedItems.firstIndex(of: item) {
            checkedItems.remove(at: index)
        } else {
            checkedItems.append(item)
        }
        
        if let allItemsIndex = allItems.firstIndex(where: { $0.id == item.id }) {
            allItems[allItemsIndex].isChecked.toggle()
        }
    }
    
    func toggleCompleted(_ item: ChecklistItem){
        let currentDate = Date()
        if let allItemsIndex = allItems.firstIndex(where: { $0.id == item.id }) {
            if allItems[allItemsIndex].isChecked {
                allItems[allItemsIndex].isCompleted = true
                allItems[allItemsIndex].lastCompletionDate = currentDate
            } else {
                // If unchecked, check if it's still completed based on frequency
                switch allItems[allItemsIndex].frequency {
                case .everyday:
                    allItems[allItemsIndex].isCompleted = Calendar.current.isDateInToday(item.lastCompletionDate ?? Date.distantPast)
                case .everyWeek:
                    allItems[allItemsIndex].isCompleted = Calendar.current.isDate(item.lastCompletionDate ?? Date.distantPast, equalTo: currentDate, toGranularity: .weekOfYear)
                case .everyMonth:
                    allItems[allItemsIndex].isCompleted = Calendar.current.isDate(item.lastCompletionDate ?? Date.distantPast, equalTo: currentDate, toGranularity: .month)
                }
            }
        }
        
        if let index = checkedItems.firstIndex(of: item) {
            if checkedItems[index].isChecked {
                checkedItems[index].isCompleted = true
                checkedItems[index].lastCompletionDate = currentDate
            } else {
                // If unchecked, check if it's still completed based on frequency
                switch checkedItems[index].frequency {
                case .everyday:
                    checkedItems[index].isCompleted = Calendar.current.isDateInToday(item.lastCompletionDate ?? Date.distantPast)
                case .everyWeek:
                    checkedItems[index].isCompleted = Calendar.current.isDate(item.lastCompletionDate ?? Date.distantPast, equalTo: currentDate, toGranularity: .weekOfYear)
                case .everyMonth:
                    checkedItems[index].isCompleted = Calendar.current.isDate(item.lastCompletionDate ?? Date.distantPast, equalTo: currentDate, toGranularity: .month)
                }
            }
        }
    }
    
    func setFrequency(for item: ChecklistItem, to newFrequency: Frequency) {
        if let index = allItems.firstIndex(where: { $0.id == item.id }) {
            allItems[index].frequency = newFrequency
            
            // Update the checked items array if necessary
            if let checkedIndex = checkedItems.firstIndex(where: { $0.id == item.id }) {
                checkedItems[checkedIndex].frequency = newFrequency
            }
        }
    }
    
}
