import Foundation

struct Video: Identifiable, Hashable, Codable {
    let id: String
    var title: String
    var thumbnailURL: URL?
    var duration: String?
    var detailURL: URL?
}
