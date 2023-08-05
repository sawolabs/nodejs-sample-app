pipeline{
    agent any

   environment {
     BRANCH_NAME = "${GIT_BRANCH}"
   }

    stages {
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
          tools {
                nodejs 'node16'
            }
          steps{
           script{
              echo 'running Sonar stage ...'
            }
            script {
                sonarqubeScannerHome = tool 'sonar'
            }
            withSonarQubeEnv('sonar') {
                sh "${sonarqubeScannerHome}/bin/sonar-scanner -Dsonar.host.url=http://sonarqube:9000 -Dsonar.qualitygate.wait=true"
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
