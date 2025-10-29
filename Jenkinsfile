pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                git branch: 'main', url: 'https://github.com/KastroVKiran/Netflix-Pipeline-Project.git'
            }
        }

        stage('Build') {
            steps {
                echo "Building Netflix App..."
                sh 'mvn clean package'
            }
        }

        stage('Test') {
            steps {
                echo "Running Tests..."
                sh 'mvn test'
            }
        }

        stage('Deploy') {
            steps {
                echo "Deploying Application..."
                // Example: deploy to Tomcat or Docker
                // sh 'scp target/*.war ubuntu@<EC2_IP>:/var/lib/tomcat9/webapps/'
            }
        }
    }

    post {
        success {
            echo "Build and Deployment Successful!"
        }
        failure {
            echo "Build Failed!"
        }
    }
}
