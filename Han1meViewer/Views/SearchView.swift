import SwiftUI

struct SearchView: View {
    @State private var query = ""

    var body: some View {
        NavigationStack {
            EmptyStateView(
                title: query.isEmpty ? "搜索" : "暂无结果",
                systemImage: "magnifyingglass",
                message: query.isEmpty ? "输入关键词开始搜索。" : "搜索接口将在网络层完成后接入。"
            )
            .navigationTitle("搜索")
            .searchable(text: $query, prompt: "搜索")
        }
    }
}
