import SwiftUI

struct HomeView: View {
    @StateObject private var model = HomeViewModel()

    var body: some View {
        NavigationStack {
            Group {
                if model.videos.isEmpty {
                    ContentUnavailableView(
                        "第一版骨架",
                        systemImage: "play.rectangle",
                        description: Text("网络层和页面解析器将在下一阶段接入。")
                    )
                } else {
                    List(model.videos) { video in
                        NavigationLink(value: video) {
                            VStack(alignment: .leading) {
                                Text(video.title)
                                if let duration = video.duration {
                                    Text(duration).font(.caption).foregroundStyle(.secondary)
                                }
                            }
                        }
                    }
                }
            }
            .navigationTitle("Han1meViewer")
            .navigationDestination(for: Video.self) { VideoDetailView(video: $0) }
            .task { await model.load() }
        }
    }
}
