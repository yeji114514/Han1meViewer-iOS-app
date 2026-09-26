import SwiftUI

struct FavoritesView: View {
    var body: some View {
        NavigationStack {
            EmptyStateView(
                "暂无收藏",
                systemImage: "heart",
                message: "收藏数据将在本地数据层接入后启用。"
            )
            .navigationTitle("收藏")
        }
    }
}
