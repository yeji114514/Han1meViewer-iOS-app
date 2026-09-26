# Han1meViewer-iOS v0.1.0

第一版 iOS 原生迁移骨架，目标是最终通过云端 macOS / GitHub Actions 构建并安装到个人 iPhone。

## 无 Mac 构建

本项目包含：

`.github/workflows/ios-build.yml`

把项目上传到 GitHub 后：

1. 打开仓库的 **Actions**
2. 选择 **iOS Build**
3. 点击 **Run workflow**，或直接 push 到 `main` / `master`
4. GitHub 会使用 macOS runner + Xcode 构建
5. 在该次 workflow 的 **Artifacts** 中下载：
   - `Han1meViewer-iOS-unsigned`
   - `Han1meViewer-iOS-app`

### 当前 IPA 的重要说明

默认 workflow 使用：

`CODE_SIGNING_ALLOWED=NO`

因此生成的是**未签名 IPA**。它的用途是验证项目能够在真实 iOS SDK 下成功编译，以及方便后续签名。

**未签名 IPA 不能直接安装到普通 iPhone。**

要真正安装到自己的 iPhone，需要使用自己的 Apple 签名身份。下一阶段可以增加 GitHub Actions 的签名流程，通常需要 Apple Developer Program、Distribution Certificate / 相关私钥以及 provisioning profile，并通过 GitHub Secrets 安全保存。

## 当前项目状态

- SwiftUI App 入口
- Tab 导航
- 首页 / 搜索 / 收藏 / 历史 / 设置页面骨架
- 视频详情页
- AVPlayer / VideoPlayer 播放器入口
- URLSession 网络层
- 后台下载管理器骨架
- 本地持久化层占位
- GitHub Actions 云端 iOS 编译

## 本地开发

如果以后获得 Mac，可使用 Xcode 打开：

`Han1meViewer-iOS.xcodeproj`

然后在 Signing & Capabilities 中选择自己的 Team。

## 下一阶段

1. 从原 Android 项目映射网络请求与数据模型
2. 实现 HTML/JSON Parser
3. 接入真实首页、搜索和详情数据
4. 接入视频源模型与 AVPlayer
5. SwiftData：历史 / 收藏 / 播放列表 / 播放进度
6. 完善后台下载
7. 增加 Apple 签名 workflow

> 本项目仅提供技术迁移骨架；不会实现绕过验证码、Cloudflare、DRM 或其他访问控制的机制。
