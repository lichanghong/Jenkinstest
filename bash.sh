xcodebuild archive -workspace TableView.xcworkspace -configuration Adhoc -scheme TableView -archivePath TableView.xcarchive PROVISIONING_PROFILE_SPECIFIER="qingYangMedicalADHoc"
xcodebuild -exportArchive -archivePath TableView.xcarchive  -exportPath ./ -exportOptionsPlist plist PROVISIONING_PROFILE="qingYangMedicalADHoc"
