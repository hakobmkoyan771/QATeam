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
    stage("Build Python Container Image") {
      steps {
        sh "docker build -t python_container ." 
      }
    }
    stage("Python Container") {
      agent {
        docker {
          image 'python_container'
        }
      }
      steps {
       sh "ls"
      }
    }
  }
}
