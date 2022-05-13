pipeline {
  agent any
  
  stages {
    stage("Keep commit hash") {
      steps {
        sh """docker exec redis_server redis-cli """""
      }
    }
    stage('Checkout "Tasks" Repo')  {
      steps {
        dir('TasksRepo') {
          git branch: 'main', url: "https://github.com/armenmelkonyan90/for-python-tasks.git"
        }
      }
    }
    stage("Build & Run Testing Container") {
      steps {
        sh "docker build -t temp_test_img ."
        sh """docker run --rm --name temp_container temp_test_img >> answers.txt"""
      }  
    }
  }
}
