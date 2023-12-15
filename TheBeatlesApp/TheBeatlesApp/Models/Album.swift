import Foundation

struct Album: Codable, Hashable {
    var name: String
    var cover: String
    var year: Int
    var songs: [String]
    var wikipedia: String
}

extension Album {
    
    static var all: [Album] = Bundle.main.decode([Album].self, from: "albums.json")
    
}
