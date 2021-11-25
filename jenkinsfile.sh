

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
            
        sh '/Users/rahgangw/flutter_application_rg/android/gradlew assembleDebug'
        sh '/Users/rahgangw/flutter_application_rg/android/gradlew assembleDebugAndroidTest'
            }
        }

    }
}