pipeline {
    agent any
    stages {
        stage ("applying permission") {
            environment {
                AWS_ACCESS_KEY_ID = credentials('ACCESS_KEY')
                AWS_SECRET_ACCESS_KEY = credentials('SECRET_KEY')
            }
           
           steps {
               sh 'PATH=$PATH:$HOME/terraform'
               sh 'terraform init' 
               sh 'terraform apply -auto-approve'

           }
        }
    }
}