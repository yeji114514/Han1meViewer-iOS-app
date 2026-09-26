import SwiftUI

struct FavoritesView: View {
    var body: some View {
        NavigationStack {
            ContentUnavailableView(
                "暂无收藏",
                systemImage: "heart",
                description: Text("收藏数据将在 SwiftData 层接入后启用。")
            )
            .navigationTitle("收藏")
        }
    }
}
