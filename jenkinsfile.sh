pushd android

flutter build apk 

./gradlew app:assembleAndroidTest

./gradlew app:assembleDebug -Ptarget=integration_test/app_test.dart

popd

echo $GCLOUD_KEY_FILE | base64 --decode > ./gcloud_key_file.json

gcloud auth activate-service-account --key-file=gcloud_key_file.json

gcloud --quiet config set project your-project-id

# Run the Flutter integration tests as if they were regular Android instrumentation tests
gcloud firebase test android run \
  --type instrumentation \
  --app build/app/outputs/apk/debug/app-debug.apk \
  --test build/app/outputs/apk/androidTest/debug/app-debug-androidTest.apk \