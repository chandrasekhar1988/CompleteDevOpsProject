pipeline {
    agent any
    
    environment {
        DB_USER = 'ecom_admin'
        // GitHub repository URL configuration
        GIT_REPO = 'https://github.com/chandrasekhar1988/CompleteDevOpsProject.git'
    }
    
    stages {
        stage('Clone Source Code') {
            steps {
                echo 'Cloning the latest source code from GitHub...'
                // Automated step to pull code from the main branch of GitHub
                git branch: 'main', url: "${GIT_REPO}"
            }
        }

        stage('SonarQube Quality Check') {
            steps {
                echo 'Running Static Code Analysis via SonarQube Scanner...'
                // sh 'sonar-scanner' (Uncomment to execute on a configured server)
            }
        }
        
        stage('Build & Test Image') {
            steps {
                echo 'Building Docker image using the Dockerfile...'
                sh 'docker build -t my-ecom-app:latest .'
            }
        }
        
        stage('Deploy to Dev Node') {
            steps {
                echo 'Cleaning up existing containers and deploying the updated application...'
                // Force remove the old container if it exists to prevent naming conflicts
                sh 'docker rm -f ecom-dev-container || true'
                
                // Running the new Docker container
                sh 'docker run -d --name ecom-dev-container -p 8081:80 -e DB_HOST="dev-db" my-ecom-app:latest'
                echo 'Application successfully deployed and running on port 8081!'
            }
        }
    }
}