import Foundation

public protocol RetroSettings {
    var items: [RetroSettingItem] { get set }
    init()
}

public extension RetroSettings {
    func setting(named name: String) -> RetroSettingItem? {
        items.first { $0.name == name }
    }

    mutating func update(setting item: RetroSettingItem) {
        if let index = items.firstIndex(where: { $0.name == item.name }) {
            items[index] = item
        }
    }
}
