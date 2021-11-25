

pipeline {
    agent any

environment {
            flutter = "/Users/rahgangw/flutter/flutter/bin/flutter"
            buzz_test = "/Users/rahgangw/flutter_application_rg"
        }

    stages {
        stage('Hello') {
            steps {             

sh '$buzz_test/android/gradlew :app:assembleDebug'

sh '$buzz_test/android/gradlew :app:assembleDebugAndroidTest'

            }
        }
    }
}