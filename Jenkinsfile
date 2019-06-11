pipeline {
  agent {
    docker {
      image 'accordion/tomcat8:jre8'
    }

  }
  stages {
    stage('init') {
      steps {
        echo 'jenkins pipeline'
        sh '''echo PATH = ${PATH}
echo M2_HOME = ${M2_HOME}
mvn clean'''
      }
    }
    stage('build') {
      steps {
        sh 'mvn -Dmaven.test.failure.ignore=true install'
      }
    }
    stage('') {
      steps {
        anchore(name: 'anchore', anchoreioPass: 'foobar', anchoreioUser: 'admin', engineurl: 'http://anchore-anchore-engine-api.anchore.svc.cluster.local:8228/v1/')
      }
    }
  }
}