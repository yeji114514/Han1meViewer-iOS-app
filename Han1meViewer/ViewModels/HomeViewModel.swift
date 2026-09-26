import Foundation

@MainActor
final class HomeViewModel: ObservableObject {
    @Published private(set) var videos: [Video] = []
    @Published private(set) var isLoading = false
    @Published var errorMessage: String?

    private let service = HanimeService()

    func load() async {
        isLoading = true
        defer { isLoading = false }

        do {
            videos = try await service.fetchHome()
        } catch {
            errorMessage = error.localizedDescription
        }
    }
}
