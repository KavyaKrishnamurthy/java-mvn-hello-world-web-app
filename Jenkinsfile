pipeline {    
agent { label: 'slave1' }
   stages {
  
 
   stage('checkout') {
         
        	steps {
      
         		sh 'git clone https://github.com/KavyaKrishnamurthy/java-mvn-hello-world-web-app'
  
          }
    
    }
 
stage('build') {
         
        	steps {
  
 sh 'mvn package'
}
}

   }

}
