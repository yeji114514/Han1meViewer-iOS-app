import SwiftUI

struct SettingsView: View {
    var body: some View {
        NavigationStack {
            Form {
                Section("应用") {
                    LabeledContent("版本", value: "0.1.0")
                    LabeledContent("平台", value: "iOS")
                }
                Section("移植状态") {
                    Label("SwiftUI UI 骨架", systemImage: "checkmark.circle")
                    Label("网络层接口", systemImage: "circle.dashed")
                    Label("HTML 解析器", systemImage: "circle.dashed")
                    Label("播放器", systemImage: "circle.dashed")
                    Label("下载", systemImage: "circle.dashed")
                }
            }
            .navigationTitle("设置")
        }
    }
}
