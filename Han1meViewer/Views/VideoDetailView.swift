import SwiftUI

struct VideoDetailView: View {
    let video: Video

    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 16) {
                Text(video.title)
                    .font(.title2.bold())

                if let duration = video.duration {
                    Text(duration)
                        .foregroundStyle(.secondary)
                }

                NavigationLink("打开播放器") {
                    PlayerView(video: video)
                }
                .buttonStyle(.borderedProminent)
            }
            .padding()
        }
        .navigationTitle("详情")
        .navigationBarTitleDisplayMode(.inline)
    }
}
