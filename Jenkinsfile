pipeline {
  agent any
  stages {
    stage('Build') {
      steps {
        echo 'This is when I build'
      }
    }
    stage('Unit Test') {
      steps {
        echo 'This is where I unit test'
      }
    }
    stage('Response Time Test') {
      steps {
        echo 'This is where I response time test'
      }
    }
    stage('Publish Image') {
      steps {
        echo 'This is where I tag and upload the image'
      }
    }
  }
}