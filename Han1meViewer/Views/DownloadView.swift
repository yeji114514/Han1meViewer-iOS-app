import SwiftUI

struct DownloadView: View {
    var body: some View {
        NavigationStack {
            EmptyStateView(
                "暂无下载任务",
                systemImage: "arrow.down.circle",
                message: "后台下载管理器已经预留。"
            )
            .navigationTitle("下载")
        }
    }
}
