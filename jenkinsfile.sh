

pipeline {
    agent any

environment {
            flutter = "/Users/rahgangw/flutter/flutter/bin/flutter"
        }

    stages {
        stage('Hello') {
            steps {

pushd android              

./gradlew :app:assembleDebug

./gradlew :app:assembleDebugAndroidTest

popd

            }
        }
    }
}