pipeline{
    agent any

//    environment {
//      BRANCH_NAME = "${GIT_BRANCH.split("origin/")[1]}"
//    }

    stages {
        // stage('Build') {
        //     steps {
        //         echo BRANCH_NAME
        //         git branch: BRANCH_NAME, url: 'https://github.com/ecomlisters/nodejsSample'
        //     }
        // }
        stage("environments"){
            steps{
                sh 'printenv'
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
        // stage('Sonar'){
        //   when {
        //     expression {
        //       BRANCH_NAME == 'main'
        //       }
        //   }
        //   tools {
        //         nodejs 'node16'
        //     }
        //  steps{
        //    script{
        //       echo 'running Sonar stage ...'
        //     }
            
        //     script {
        //         sonarqubeScannerHome = tool 'sonar'
        //     }
        //     withSonarQubeEnv('sonar') {
        //         sh "${sonarqubeScannerHome}/bin/sonar-scanner -Dsonar.host.url=http://sonarqube:9000 -Dsonar.qualitygate.wait=true"
        //     }           
         
        //   }
        // }
        stage('Deploy') {
            steps {
                echo 'Deploying....'
            }
        }
        
    }
}
