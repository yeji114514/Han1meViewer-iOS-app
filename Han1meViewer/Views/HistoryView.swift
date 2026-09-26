import SwiftUI

struct HistoryView: View {
    var body: some View {
        NavigationStack {
            EmptyStateView(
                "暂无历史",
                systemImage: "clock",
                message: "观看历史和播放进度将在本地数据库层接入。"
            )
            .navigationTitle("历史")
        }
    }
}
