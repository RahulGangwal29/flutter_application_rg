

pipeline {
    agent any

environment {
            flutter = "/Users/rahgangw/flutter/flutter/bin/flutter"
            gradleT = "$BUZZ_PROJECT_ROOT/android/"
        }

    stages {
        stage ('Assemble Android Test')
        {
            steps{
               
        sh '/Users/rahgangw/flutter_application_rg/android/./gradlew assembleDebug'
        sh '/Users/rahgangw/flutter_application_rg/android/./gradleT assembleDebugAndroidTest'
            }
        }

    }
}