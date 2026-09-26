import SwiftUI
import AVKit

struct PlayerView: View {
    let video: Video
    @State private var player: AVPlayer?

    var body: some View {
        Group {
            if let player {
                VideoPlayer(player: player)
                    .ignoresSafeArea(edges: .bottom)
            } else {
                ContentUnavailableView(
                    "暂无播放地址",
                    systemImage: "play.slash",
                    description: Text("播放器已经预留，下一阶段接入视频源解析。")
                )
            }
        }
        .navigationTitle(video.title)
        .navigationBarTitleDisplayMode(.inline)
        .onDisappear {
            player?.pause()
        }
    }
}
