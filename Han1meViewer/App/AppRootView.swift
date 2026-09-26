import SwiftUI

struct AppRootView: View {
    var body: some View {
        TabView {
            HomeView()
                .tabItem { Label("首页", systemImage: "house") }
            SearchView()
                .tabItem { Label("搜索", systemImage: "magnifyingglass") }
            FavoritesView()
                .tabItem { Label("收藏", systemImage: "heart") }
            HistoryView()
                .tabItem { Label("历史", systemImage: "clock") }
            SettingsView()
                .tabItem { Label("设置", systemImage: "gearshape") }
        }
        .tint(.pink)
    }
}
