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
            
            sh "cd ${WORKSPACE}"
            sh 'pwd'
            sh 'ls'
 sh 'mvn package'
}
}

   }

}
