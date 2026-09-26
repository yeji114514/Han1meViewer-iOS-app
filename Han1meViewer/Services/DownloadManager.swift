import Foundation

@MainActor
final class DownloadManager: NSObject, ObservableObject {
    @Published private(set) var activeDownloads: [URL: Double] = [:]

    private lazy var session: URLSession = {
        let configuration = URLSessionConfiguration.background(
            withIdentifier: "local.han1meviewer.ios.downloads"
        )
        configuration.isDiscretionary = false
        configuration.sessionSendsLaunchEvents = true
        return URLSession(configuration: configuration, delegate: self, delegateQueue: nil)
    }()

    func start(url: URL) {
        _ = session.downloadTask(with: url)
        // The actual task bookkeeping will be added with the video source model.
    }
}

extension DownloadManager: URLSessionDownloadDelegate {
    nonisolated func urlSession(_ session: URLSession, downloadTask: URLSessionDownloadTask,
                                didFinishDownloadingTo location: URL) {
        // Persist the completed file in the next implementation phase.
    }

    nonisolated func urlSession(_ session: URLSession, downloadTask: URLSessionDownloadTask,
                                didWriteData bytesWritten: Int64, totalBytesWritten: Int64,
                                totalBytesExpectedToWrite: Int64) {
        guard totalBytesExpectedToWrite > 0 else { return }
        let progress = Double(totalBytesWritten) / Double(totalBytesExpectedToWrite)
        Task { @MainActor in
            if let url = downloadTask.originalRequest?.url {
                self.activeDownloads[url] = progress
            }
        }
    }
}
