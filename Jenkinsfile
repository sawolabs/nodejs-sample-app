pipeline{
    agent any

   environment {
     BRANCH_NAME = "${GIT_BRANCH.split("/")[1]}"
   }

    stages {
        stage('Build') {
            steps {
                echo BRANCH_NAME
                git branch: BRANCH_NAME, url: 'https://github.com/ecomlisters/nodejsSample'
            }
        }
        stage('Install') {
            tools {
                nodejs 'node16'
            }
            steps {
                sh 'npm install'
            }
        }
        stage('Sonar'){
          when {
            expression {
              BRANCH_NAME == 'main'
              }
          }
         steps{
           script{
              echo 'running Sonar stage ...'
           }
         }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying....'
            }
        }
        
    }
}
