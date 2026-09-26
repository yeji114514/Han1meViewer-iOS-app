import Foundation

struct NetworkClient {
    var session: URLSession = .shared

    func get(_ url: URL, headers: [String: String] = [:]) async throws -> (Data, HTTPURLResponse) {
        var request = URLRequest(url: url)
        request.httpMethod = "GET"
        headers.forEach { request.setValue($1, forHTTPHeaderField: $0) }

        let (data, response) = try await session.data(for: request)
        guard let http = response as? HTTPURLResponse else {
            throw URLError(.badServerResponse)
        }
        guard (200..<400).contains(http.statusCode) else {
            throw URLError(.badServerResponse)
        }
        return (data, http)
    }
}
