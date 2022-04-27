pipeline {
  agent any
  stages {
    stage("Checkout Tasks Repo")  {
      steps {
        dir('Students') {
          git branch: 'main', url: 'https://github.com/armenmelkonyan90/for-python-tasks'
        }
      }
    }
    stage("Python Container") {
      agent { 
        docker {
          dockerfile true
          reuseNode true 
          }
        }
      steps {
       sh "ls"
      }
    }
  }
}
