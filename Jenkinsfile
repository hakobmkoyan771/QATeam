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
    stage("Copy Workspace to Python Container") {
      agent {
        dockerfile true 
      }
      steps {
        sh 'node --version'
        sh 'svn --version'
      }
    }
  }
}
