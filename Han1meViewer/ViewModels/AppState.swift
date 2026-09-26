import Foundation
import SwiftUI

final class AppState: ObservableObject {
    @Published var isConfigured = false
    @Published var baseURL = ""

    init() {
        // Network endpoint will be added after the Android project's parser/API
        // has been mapped to an iOS-safe implementation.
    }
}
