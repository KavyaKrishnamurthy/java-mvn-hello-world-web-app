pipeline {
  agent { label 'slave_n1' } 
    stages {
        stage('Directory') {
            steps {
               // sh 'cd /home/slave_n1/workspace/Pipelinejob/java-mvn-hello-world-web-app/'
               sh 'cd ${WORKSPACE}'
            }
        }
        stage('Compile') {
            steps {
                sh 'mvn compile'
            }
        }
        stage('Package') {
            steps {
                sh 'mvn package'
            }
        }
      stage('Deploy') {
            steps {
                sh 'cp /home/slave_n1/workspace/tomcatinstall/target/mvn-hello-world.war /opt/tomcat/webapps'
            }
        }
   stage('Run') {
            steps {
                sh 'cd /opt/tomcat/bin/'
              sh './startup.sh'
            }
        }
    }
}

