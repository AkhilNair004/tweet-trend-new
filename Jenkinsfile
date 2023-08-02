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
}
