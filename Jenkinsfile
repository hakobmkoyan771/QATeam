pipeline {
  agent any
  parameters {
    string(name: 'link', defaultValue: 'https://github.com/armenmelkonyan90/for-python-tasks.git', description: """Link of student's git repository""") 
  }
  stages {
    stage("Checkout Tasks Repo")  {
      steps {
        dir('Students') {
          git branch: 'main', url: "${params.link}"//'https://github.com/armenmelkonyan90/for-python-tasks'
        }
      }
    }
    /*stage("Build Python Container Image") {
    agent {
      dockerfile {
        filename 'Dockerfile'
        reuseNode true
      }
    }
      steps {
        script {
          docker.build("python_container")
        }
      }
    }*/
  }
}
