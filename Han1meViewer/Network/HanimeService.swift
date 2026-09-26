import Foundation

struct HanimeService {
    private let client = NetworkClient()

    func fetchHome() async throws -> [Video] {
        // Intentionally left as a clean seam for the HTML/JSON parser.
        // The Android project uses Retrofit/OkHttp + Jsoup; the iOS port will
        // use URLSession and a dedicated parser after the source is mapped.
        return []
    }
}
