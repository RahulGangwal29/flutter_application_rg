

pipeline {
    agent any

environment {
            flutter = "/Users/rahgangw/flutter/flutter/bin/flutter"
        }

    stages {
        stage ('Assemble Android Test')
        {
            steps{
        ./gradlew assembleDebug
        ./gradlew assembleDebugAndroidTest
            }
        }

    }
}