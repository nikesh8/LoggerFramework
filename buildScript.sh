xcodebuild archive \
  -scheme LoggerFramework \
  -archivePath "archives/LoggerFramework-iOS.xcarchive" \
  -destination "generic/platform=iOS" \
  -sdk iphoneos \
  SKIP_INSTALL=NO \
  BUILD_LIBRARY_FOR_DISTRIBUTION=YES

xcodebuild archive \
  -scheme LoggerFramework \
  -archivePath "archives/LoggerFramework-iOS-simulator.xcarchive" \
  -destination "generic/platform=iOS Simulator" \
  -sdk iphonesimulator \
  SKIP_INSTALL=NO \
  BUILD_LIBRARY_FOR_DISTRIBUTION=YES

xcodebuild -create-xcframework \
  -framework "archives/LoggerFramework-iOS.xcarchive/Products/Library/Frameworks/LoggerFramework.framework" \
  -framework "archives/LoggerFramework-iOS-simulator.xcarchive/Products/Library/Frameworks/LoggerFramework.framework" \
  -output "LoggerFramework.xcframework"