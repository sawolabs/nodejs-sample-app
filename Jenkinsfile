pipeline {
  agent any
  stages {
    stage('build') {
      steps {
        git(url: 'https://github.com/ecomlisters/nodejsSample/', branch: 'main')
      }
    }

    stage('inst') {
      steps {
        npm 'install'
      }
    }

  }
}