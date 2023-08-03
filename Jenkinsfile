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
        stage("build") {
            steps {
                 echo "----------- build started ----------"
                sh 'mvn clean package'
                 echo "----------- build completed ----------"
            }
        }

        stage ("SonarQube Scanner") {
        environment {
            scannerHome = tool 'sonar-scanner'
        }
        steps{
         withSonarQubeEnv('sonar-server') { // If you have configured more than one global server connection, you can specify its name
      sh "${scannerHome}/bin/sonar-scanner -X"
    }
    }
        }
    }
       
}
