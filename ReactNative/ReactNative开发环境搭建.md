[中文官方文档参考](https://reactnative.cn/docs/environment-setup)
[官方文档参考](https://reactnative.dev/docs/environment-setup)

# 安装Node
`brew install node`
# 安装 Watchman(热更新工具)
`brew install watchman`
# 安装Xcode
appstore安装xcode  
# 安装CocoaPods
```
sudo gem install cocoapods
或者用brew安装
brew install cocoapods
```
# 创建React Native项目
`npx react-native@latest init demo1`
`npm install` 安装node基础依赖
# iOS及android依赖安装
创建React Native项目完成后会有相应提示,按要求安装依赖
```
Run instructions for Android:
    • Have an Android emulator running (quickest way to get started), or a device connected.
    • cd "/Users/lijin/Developer/Person/RNDemo2" && npx react-native run-android
  
  Run instructions for iOS:
    • cd "/Users/lijin/Developer/Person/RNDemo2/ios"
    
    • Install Cocoapods
      • bundle install # you need to run this only once in your project.
      • bundle exec pod install
      • cd ..
    
    • npx react-native run-ios
    - or -
    • Open RNDemo2/ios/RNDemo2.xcodeproj in Xcode or run "xed -b ios"
    • Hit the Run button
```
# 运行程序
```
启动Metro Bundler监听
npx react-native start
运行IOS
npx react-native run-ios
指定端口号运行(默认8081)
npx react-native run-ios --port=8088
运行Android
npx react-native run-android

```
# 三方组件
[第三方组件](https://reactnative.dev/docs/components-and-apis)

# 常见错误
[常见错误](https://reactnative.cn/docs/new-architecture-troubleshooting)

# 使用Expo工具链
[中文文档](https://expo.nodejs.cn/)
[英文文档](https://docs.expo.dev/get-started/set-up-your-environment/)
```
全局安装
sudo npm install -g expo-cli   
创建项目
expo init Demo
启动项目
expo start
退出 Expo 管理
expo eject
创建iOS原生代码
npx expo prebuild -p ios
创建android原生代码
npx expo prebuild -p android
```
# 使用expo创建项目
```
npx create-expo-app@latest
```
expo项目默认使用[file-based routing](https://docs.expo.dev/router/advanced/stack/)路由，不习惯的可以通过下面的方式去掉  
```
npm uninstall expo-router
# or
yarn remove expo-router

删除file-based routing相关文件
rm -rf app

换成React Navigation路由库
# 安装主库
npm install @react-navigation/native

# 安装必要的依赖
npm install react-native-screens react-native-safe-area-context

# 安装 Stack Navigator
npm install @react-navigation/stack
```

