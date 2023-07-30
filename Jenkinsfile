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
            steps {
                npm 'install'
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
        stage('Report'){
            steps{
               cucumber buildStatus: 'null', customCssFiles: '', customJsFiles: '', failedFeaturesNumber: -1, failedScenariosNumber: -1, failedStepsNumber: -1, fileIncludePattern: '**/*.json', pendingStepsNumber: -1, reportTitle: 'App Report', skippedStepsNumber: -1, sortingMethod: 'ALPHABETICAL', undefinedStepsNumber: -1
            }
        }
    }
}
