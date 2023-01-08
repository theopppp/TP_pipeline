pipeline {
    agent any

 

    environment {
        PATH = "C:\\Windows\\System32;C:\\Users\\theog\\AppData\\Local\\Programs\\Python\\Python310;C:\\Program Files\\Docker\\Docker\\resources\\bin"
    }

 

    stages {
        stage('Building') {
            steps {
                git branch: 'main', url: 'https://github.com/theopppp/TP_pipeline.git'
            }
        }
        stage('Testing') {
            steps {
                bat 'python -m pip install Flask'
                bat 'python test_main.py'
            }
        }
        stage('Deploying') {
            steps {
                bat 'docker build -t jenkins_app .'
                bat 'docker run -d jenkins_app'
            }
        }
    }
} 
