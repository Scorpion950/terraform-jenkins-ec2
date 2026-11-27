
pipeline {
    agent any

    options {
        disableConcurrentBuilds()
    }

    stages {

        stage('Checkout') {
            steps {
                checkout scm
            }
        }

        stage('Terraform Init') {
            steps {
                sh 'terraform init'
            }
        }

        stage('Terraform Validate') {
            steps {
                sh 'terraform validate'
            }
        }

        stage('Terraform Plan') {
            steps {
                sh 'terraform plan -input=false'
            }
        }

        stage('Terraform Apply') {
            steps {
                sh 'terraform apply -input=false -auto-approve'
            }
        }

        stage('Display IP Addresses') {
            steps {
                sh 'cat IP.txt'
            }
        }

        stage('Archive IP File') {
            steps {
                archiveArtifacts artifacts: 'IP.txt',
                    fingerprint: true
            }
        }
    }
}


