/*node {
  dir('Students') {
     git branch: 'main', url: 'https://github.com/armenmelkonyan90/for-python-tasks'
  }
}*/
pipeline {
  agent any
  stages {
    stage("echo")  {
      steps {
        dir('Students') {
          git branch: 'main', url: 'https://github.com/armenmelkonyan90/for-python-tasks'
        }
      }
    }
  }
}
