pipeline {
  agent any
  parameters {
    string(name: 'link', defaultValue: 'https://github.com/armenmelkonyan90/for-python-tasks.git', description: """Link of student's git repository""") 
  }
  stages {
    stage("Checkout Tasks Repo")  {
      steps {
        dir('Students') {
          git branch: 'main', url: "${params.link}"
          sh 'echo "${params.link}" > repo-link'
        }
      }
    }
/*    stage("Build & Run Pytest Container") {
      steps {
      }
    }*/
  }
}
