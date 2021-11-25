

pipeline {
    agent any

environment {
            flutter = "/Users/rahgangw/flutter/flutter/bin/flutter"
            buzz_test = "/Users/rahgangw/flutter_application_rg"
        }

    stages {
        stage ('Assemble Android Test')
        {
            steps{
                sh 'cd $buzz_test/android'
        sh './gradlew assembleDebug'
        sh './gradlew assembleDebugAndroidTest'
            }
        }

    }
}