import SwiftUI

struct SearchView: View {
    @State private var query = ""

    var body: some View {
        NavigationStack {
            ContentUnavailableView(
                "搜索",
                systemImage: "magnifyingglass",
                description: Text("搜索接口将在网络层完成后接入。")
            )
            .navigationTitle("搜索")
            .searchable(text: $query, prompt: "搜索")
        }
    }
}
