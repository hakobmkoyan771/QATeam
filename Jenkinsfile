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
        }
      }
    }
    stage("Build Python Container Image") {
      steps {
        script {
          docker.build("python_container", "-f ./Dockerfile .")
        }
        withDockerContainer('python_container') {
          sh 'ls' 
        }
      }
    }
  }
}
