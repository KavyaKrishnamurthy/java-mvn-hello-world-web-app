pipeline {    
   agent any 
   stages {
  
 
   stage('checkout') {
         
        	steps {
                 sh 'rm -rf *'
         		sh 'git clone https://github.com/KavyaKrishnamurthy/java-mvn-hello-world-web-app'
  
          }
    
    }
 
stage('build') {
         
        	steps {
            
            sh "cd /home/slave_n1/workspace/Pipelinejob/java-mvn-hello-world-web-app"
            sh 'pwd'
            sh 'ls'
 sh 'mvn package'
}
}

   }

}
