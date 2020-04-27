pipeline {
  agent any
  stages {
    stage('test1') {
      steps {
        sleep 20
      }
    }

    stage('test2') {
      parallel {
        stage('test2') {
          steps {
            echo 'hello'
          }
        }

        stage('test21') {
          steps {
            sleep 3
          }
        }

      }
    }

    stage('test3') {
      steps {
        sh 'echo o'
      }
    }

    stage('done') {
      parallel {
        stage('done') {
          steps {
            sh 'echo p'
          }
        }

        stage('heki') {
          steps {
            sleep 1
          }
        }

      }
    }

  }
}