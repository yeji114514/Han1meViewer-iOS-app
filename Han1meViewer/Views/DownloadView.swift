import SwiftUI

struct DownloadView: View {
    var body: some View {
        NavigationStack {
            ContentUnavailableView(
                "暂无下载任务",
                systemImage: "arrow.down.circle",
                description: Text("后台下载管理器已经预留。")
            )
            .navigationTitle("下载")
        }
    }
}
