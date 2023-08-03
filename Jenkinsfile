pipeline {
    agent {
        node {
            label 'Slave-1'
        }
    }
environment {
    PATH = "/opt/apache-maven-3.9.3/bin:$PATH"
}
    stages {
        stage("build"){
            steps {
                 echo "----------- build started ----------"
                sh 'mvn clean package'
                 echo "----------- build completed ----------"
            }
        }
    }
       stage('SonarQube analysis') {
      steps {
        script {
          scannerHome = tool 'sonar-server'
        }
        withSonarQubeEnv('sonar-server') {
          sh "${scannerHome}/bin/sonar-scanner"
        }
      }
    }
}
