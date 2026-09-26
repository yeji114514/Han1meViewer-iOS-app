import SwiftUI

struct HistoryView: View {
    var body: some View {
        NavigationStack {
            ContentUnavailableView(
                "暂无历史",
                systemImage: "clock",
                description: Text("观看历史和播放进度将在本地数据库层接入。")
            )
            .navigationTitle("历史")
        }
    }
}
