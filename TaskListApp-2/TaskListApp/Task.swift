import Foundation

struct Task: Identifiable {
    var id = UUID()
    var title: String
    var isDone: Bool
}

extension Task: Codable { }

extension Task: Equatable { }
