

pipeline {
    agent any

environment {
            flutter = "/Users/rahgangw/flutter/flutter/bin/flutter"
            buzz_test = "/Users/rahgangw/flutter_application_rg"
        }

    stages {
        stage('Hello') {
            steps {

                sh 'cd $buzz_test'

sh 'pushd android'              

sh './gradlew :app:assembleDebug'

sh './gradlew :app:assembleDebugAndroidTest'

sh 'popd'
            }
        }
    }
}