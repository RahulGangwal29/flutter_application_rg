

pipeline {
    agent any

environment {
            flutter = "/Users/rahgangw/flutter/flutter/bin/flutter"
        }

    stages {
        stage ('Assemble Android Test')
        {
        sh "./gradlew assembleDebug"
        sh "./gradlew assembleDebugAndroidTest"
        }

    }
}