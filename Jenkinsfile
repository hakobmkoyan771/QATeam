pipeline {
  agent any
  parameters {
    string(name: 'link', defaultValue: 'https://github.com/armenmelkonyan90/for-python-tasks.git', description: """Link of student's git repository""") 
  }
  stages {
    stage("Checkout Tasks Repo")  {
      steps {
        dir('GitRepo') {
          git branch: 'main', url: "${params.link}"
        }
        sh """echo "${params.link}" > ./GitRepo/repo-link"""
      }
    }
    stage("Build & Run Pytest Container") {
      steps {
        sh "docker build -t ttt ."
        sh "docker run ttt"
      }
    }
  }
}
