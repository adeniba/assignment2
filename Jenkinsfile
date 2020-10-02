pipeline {
    agent any
    stages {
        stage ("applying permission") {
            environment {
                AWS_ACCESS_KEY_ID = credentials('ACCESS_KEY')
                AWS_SECRET_ACCESS_KEY = credentials('SECRET_KEY')
            }
           steps {
               sh 'sudo -i'
               sh 'wget https://releases.hashicorp.com/terraform/0.13.4/terraform_0.13.4_freebsd_amd64.zip'
               sh 'unzip terraform_0.13.4_freebsd_amd64.zip'
               cp 'cp terraform /usr/bin'
           }

           steps {
               sh 'terraform init' 
               sh 'terraform apply -auto-approve'

           }
        }
    }
}