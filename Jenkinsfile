pipeline {
    agent any
    stages {
        stage('Build da imagem docker') {
            steps {
                sh 'docker build -t devops/app .'
            }
        }
        stage('Subir docker-compose - Redis e APP') {
            steps {
                sh 'docker-compose up --build -d'
            }
        }
        stage('Esperando subida do container') {
            steps {
                sh 'sleep 10'
            }
        }
        stage('Teste da aplicação') {
            steps {
                sh 'chmod +x ./teste-app.sh'
                sh './teste-app.sh'
            }
        }
        stage('Shutdown do container de teste') {
            steps {
                sh 'docker-compose down'
            }
        }
    }
}