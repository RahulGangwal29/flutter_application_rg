

pipeline {
    agent any

environment {
            flutter = "/Users/rahgangw/flutter/flutter/bin/flutter"
            gradleT = "$BUZZ_PROJECT_ROOT/android/gradlew.bat"
        }

    stages {
        stage ('Assemble Android Test')
        {
            steps{
                sh 'cd $BUZZ_PROJECT_ROOT'
                sh 'pushd android'
        sh '$gradleT assembleDebug'
        sh '$gradleT assembleDebugAndroidTest'
            }
        }

    }
}