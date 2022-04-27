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
    stage("Build & Run Python Container") {
      steps {
        sh "docker build -t python_container ." 
        sh """docker run -d -it python_container ls """
      }
    }
    /*stage("Copy Workspace to Python Container") {
        sh "docker cp "
    }*/
  }
}
