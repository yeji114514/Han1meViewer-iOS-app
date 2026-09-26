# GitHub Actions 构建指南

## 1. 创建仓库

在 GitHub 新建一个空仓库，例如 `Han1meViewer-iOS`。

将本项目全部文件上传到仓库根目录。

## 2. 运行构建

进入：

`Actions → iOS Build → Run workflow`

也可以直接 push 到 `main` 或 `master` 自动触发。

## 3. 下载构建结果

打开完成的 workflow run，在页面底部找到 **Artifacts**。

`Han1meViewer-iOS-unsigned` 是 IPA。

`Han1meViewer-iOS-app` 是未签名 `.app`。

## 4. 关于安装

GitHub Actions 负责“在 macOS 上编译”并不等于已经获得 iPhone 安装权限。

真正安装需要 Apple 对 App 进行代码签名。签名信息不能写进仓库，应使用 GitHub Actions Secrets / encrypted files 保存。

推荐下一阶段再配置：

- Apple Developer Team ID
- Distribution Certificate
- Certificate private key
- Provisioning Profile

不要把 `.p12`、私钥或 provisioning profile 直接提交到 GitHub 仓库。
