## 计时
SECONDS=0

app="app"

echo "清理 build"
find . -d -name "build" | xargs rm -rf
flutter clean
rm -rf build
rm -rf app

echo "开始获取 packages 插件资源"
flutter packages get

mkdir app

##==================================apk==================================
echo "开始打包apk"
flutter build apk --release #--no-codesign
echo "打包apk已完成"

# cp -r build/app/outputs/apk/release/app-release.apk app
##==================================apk==================================

##==================================ipa==================================
echo "开始打包ipa"
flutter build ios --release #--no-codesign
echo "打包ipa已完成"

mkdir app/Payload

cp -r build/ios/iphoneos/Runner.app app/Payload

cd app
zip -r -m app-release.ipa Payload
cd ..
##==================================ipa==================================

echo "📅  Finished. Elapsed time: ${SECONDS}s"

say "打包成功"

open app
