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

            script {
            // requires SonarQube Scanner 2.8+
            sonarqubeScannerHome = tool 'sonar'
            }
            withSonarQubeEnv('sonar') {
            sh "${sonarqubeScannerHome}/bin/sonar-scanner"
            }
            // withCredentials([string(credentialsId: 'sonar', variable: 'sonarLogin')]) {
            //     sh "${sonarqubeScannerHome}/bin/sonar-scanner -e -Dsonar.host.url=http://sonarqube:9000 -Dsonar.login=${sonarLogin} -Dsonar.projectName=gs-gradle -Dsonar.projectVersion=${env.BUILD_NUMBER} -Dsonar.projectKey=GS -Dsonar.sources=complete/src/main/ -Dsonar.tests=complete/src/test/ -Dsonar.language=java -Dsonar.java.binaries=."
            // }
         
         }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying....'
            }
        }
        
    }
}
