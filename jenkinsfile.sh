
cd $FCI_BUILD_DIR


pushd android

./gradlew app:assembleAndroidTest

./gradlew app:assembleDebug -Ptarget="$FCI_BUILD_DIR/integration_test/app_test.dart"

popd

echo $GCLOUD_KEY_FILE | base64 --decode > ./rahulgangwal1992-7ed6a8713950.json

gcloud auth activate-service-account --key-file=/Users/rahgangw/Downloads/rahulgangwal1992-7ed6a8713950.json

gcloud --quiet config set project rahulgangwal1992

gcloud firebase test android run \
  --type instrumentation \
  --app build/app/outputs/apk/debug/app-debug.apk \
  --test build/app/outputs/apk/androidTest/debug/app-debug-androidTest.apk \
