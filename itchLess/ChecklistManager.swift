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
    var isChecked: Bool
    var frequency: Frequency
    
    init(title: String, isChecked: Bool, frequency: Frequency) {
            self.title = title
            self.isChecked = isChecked
            self.frequency = frequency
        }
}

class ChecklistManager: ObservableObject {
    @Published var checkedItems: [ChecklistItem] = []
    
    var allItems: [ChecklistItem] = [
        ChecklistItem(title: "洗完澡塗乳液", isChecked: true, frequency: .everyday),
        ChecklistItem(title: "按時吃藥", isChecked: true, frequency: .everyday),
        ChecklistItem(title: "出門前塗乳液", isChecked: true, frequency: .everyday),
        ChecklistItem(title: "擦拭汗水", isChecked: true, frequency: .everyday),
        ChecklistItem(title: "房間地板清理", isChecked: true, frequency: .everyWeek),
        ChecklistItem(title: "輕啟被單", isChecked: true, frequency: .everyWeek),
        ChecklistItem(title: "更換冷氣濾網", isChecked: true, frequency: .everyMonth),
        ChecklistItem(title: "房間窗簾換洗", isChecked: true, frequency: .everyMonth)
    ]
    
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
    
    func toggleFrequency(for item: ChecklistItem) {
        if let index = allItems.firstIndex(where: { $0.id == item.id }) {
            let currentFrequency = allItems[index].frequency
            let nextFrequencyIndex = (Frequency.allCases.firstIndex(of: currentFrequency)! + 1) % Frequency.allCases.count
            allItems[index].frequency = Frequency.allCases[nextFrequencyIndex]
            
            // Update the checked items array if necessary
            if let checkedIndex = checkedItems.firstIndex(where: { $0.id == item.id }) {
                checkedItems[checkedIndex].frequency = allItems[index].frequency
            }
        }
    }
}
