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
        script {
          docker.build("python_container")
        }
      }
    }
    stage("Copy Workspace Files on Python Container") {
      steps {
        sh "docker cp ./* " 
      }
    }
  }
}
