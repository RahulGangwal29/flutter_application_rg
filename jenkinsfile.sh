

pipeline {
    agent any

environment {
            flutter = "/Users/rahgangw/flutter/flutter/bin/flutter"
        }

    stages {
        stage('Hello') {
            steps {

sh './gradlew :app:assembleDebug'

sh './gradlew :app:assembleDebugAndroidTest'

sh 'popd'

sh 'echo $GCLOUD_KEY_FILE | base64 --decode > ./rahulgangwal1992-7ed6a8713950.json'

sh 'gcloud auth activate-service-account --key-file=/Users/rahgangw/Downloads/rahulgangwal1992-7ed6a8713950.json'

sh 'gcloud --quiet config set project rahulgangwal1992'

sh 'gcloud firebase test android run --type instrumentation --app build/app/outputs/apk/debug/app-debug.apk --test build/app/outputs/apk/androidTest/debug/app-debug-androidTest.apk'

            }
        }
    }
}