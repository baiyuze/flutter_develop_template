<video src="./assets/preview.mov" controls></video>

# Flutter 开发模版说明

## 依赖项列表

在这个 Flutter 项目中，我们使用了以下依赖项来实现不同的功能。每个依赖项后面标注了其当前的版本号，你可以根据项目需求和版本兼容性进行适当调整。

- `cached_network_image: ^3.4.1`：用于高效地缓存和显示网络图片，提升应用在加载图片时的性能和用户体验。
- `curved_labeled_navigation_bar: ^2.0.6`：提供了一个带有曲线效果和标签的导航栏组件，方便创建美观且易于操作的底部导航栏。
- `dio: ^5.8.0+1`：一个强大的 HTTP 客户端，用于在 Flutter 应用中进行网络请求，支持多种请求方式和丰富的功能。
- `fluro: ^2.0.5`：Flutter 应用的路由管理库，帮助管理应用内的页面导航和路由逻辑。
- `flutter`：Flutter 软件开发工具包，是构建本应用的基础框架。
  - `sdk: flutter`：指定使用 Flutter SDK 进行开发。
- `flutter_easyrefresh: ^2.2.2`：一个方便的下拉刷新和上拉加载更多的组件，让应用的列表数据加载更加流畅。
- `flutter_localizations`：Flutter 本地化支持库，用于实现应用的多语言功能。
  - `sdk: flutter`：同样指定使用 Flutter SDK 中的本地化功能。
- `flutter_staggered_animations: ^1.1.1`：提供了交错动画效果，用于创建更具吸引力的列表或布局动画。
- `go_router: ^14.8.1`：另一个强大的路由管理库，简化了 Flutter 应用中的路由配置和导航操作。
- `permission_handler: ^11.4.0`：用于处理应用在不同平台上的权限请求，如相机、存储等权限的获取和管理。
- `provider: ^6.1.2`：状态管理库，帮助在 Flutter 应用中管理和共享数据状态，使应用的架构更加清晰和可维护。
- `spring: ^2.0.2`：可能用于实现一些带有弹簧效果的动画或交互，增加应用的趣味性和交互性。
- `tdesign_flutter: ^0.1.8`：TDesign 的 Flutter 组件库，提供了一系列美观且功能丰富的 UI 组件。

## 安装依赖

在项目目录下，打开终端，执行以下命令来安装上述依赖项：

```bash
flutter pub get
```

## 启动应用

在开发环境中，你可以通过以下方式启动应用：

- 在 IDE 中（如 Android Studio 或 Visual Studio Code），使用快捷键 `CMD + F5`（Mac 系统）或 `Control + F5`（Windows 和 Linux 系统）来启动应用进行调试。

## 编译应用

根据你要发布的目标平台，使用以下命令来编译你的 Flutter 应用：

```bash
# 编译为 Android 应用包（APK）
flutter build apk

# 编译为 Web 应用
flutter build web

# 编译为 iOS 应用
flutter build ios

# 编译为 Mac 应用
flutter build macos

# 编译为 Linux 应用
flutter build linux
```
