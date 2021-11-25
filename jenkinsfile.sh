

pipeline {
    agent any

environment {
            flutter = "/Users/rahgangw/flutter/flutter/bin/flutter"
        }

    stages {
        stage('Hello') {
            steps {

sh "pushd android"              

sh "gradlew :app:assembleDebug"

sh "gradlew :app:assembleDebugAndroidTest"

sh "popd"
            }
        }
    }
}