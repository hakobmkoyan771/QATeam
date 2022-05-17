pipeline {
  agent any
  triggers {
    GenericTrigger(causeString: 'GenericCause', genericVariables: [[key: 'RELEASE_TAG', value: '$.release.tag_name'],
                                                                   [key: 'REPO_LINK', value: '$.repository.clone_url']]) 
  }
  environment {
    TAG_NAME = ""
    COMMIT_SHA = ""
  }
  parameters {
        
  }
  stages {
    stage("Store Dev Repo Commit Hash") {
      steps {
        TAG_NAME = "${RELEASE_TAG}"
        COMMIT_SHA = sh """git ls-remote "${REPO_LINK}" rev-list -n 1 "${RELEASE_TAG}" | awk "{print $1}" """
      }
    }
    stage('Checkout "Tasks" Repo')  {
      steps {
        script {
          try {
            dir('TasksRepo') {
              git branch: 'main', url: "${REPO_LINK}"
            }
          }
          catch(Exception err) {
            error("Unable to clone developer's repo")
          }
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
/*pipeline {
  agent any
  triggers {
    GenericTrigger(causeString: 'Generic Cause', 
                   genericVariables: [[key: 'COMMIT_HASH', value: '$.head_commit.id'],
                                      [key: 'NAME', value: '$.repository.name']])
  } 
  stages {
    stage("Store commit hash") { 
      steps {
        script {
          try {
            sh """docker exec redis_server redis-cli "set" "BEFORE_TEST" "${COMMIT_HASH}" """
            sh """docker exec redis_server redis-cli "save" """
          }
          catch(Exception err) {
            error("Unable to store commit hash")
          }
        }
      }
    }
    stage('Checkout "Tasks" Repo')  {
      steps {
        script {
          try {
            dir('TasksRepo') {
              git branch: 'main', url: "https://github.com/hakobmkoyan771/PythonWorkdir.git"
            }
          }
          catch(Exception err) {
            error("Unable to clone developer's repo")
          }
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
}*/
