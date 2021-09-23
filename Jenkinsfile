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
                sh 'cp /home/slave_n1/workspace/tomcatinstall/target/mvn-hello-world.war /opt/apache-tomcat-10.0.11/webapps'
            }
        }
   stage('Run') {
            steps {
                sh 'cd /opt/apache-tomcat-10.0.11/bin/./startup.sh'
          //  sh './startup.sh'
            }
        }
    }
}

