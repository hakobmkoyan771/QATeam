pipeline {
  agent any
  parameters {
    string(name: 'link', defaultValue: 'https://github.com/armenmelkonyan90/for-python-tasks.git', description: """Link of student's git repository""") 
  }
  stages {
    stage('Checkout "Tasks" Repo')  {
      steps {
        dir('TasksRepo') {
          git branch: 'main', url: "${params.link}"
        }
      }
    }
    stage("Build & Run Testing Container") {
      steps {
        sh "docker build -t temp_test_img ."
        sh """docker run --rm --name temp_container temp_test_img > answers.txt"""
      }
    }
  }
}
