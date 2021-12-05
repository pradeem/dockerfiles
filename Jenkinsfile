pipeline { 
    environment { 
        registry = "https://hub.docker.com/repository/docker/pradeem/myrepo" 
        registryCredential = 'dockerhubid' 
        dockerImage = '' 
    }
    agent any 
    stages { 
        stage('Building our image') { 
           steps { 
               script { 
                   dockerImage = docker.build registry  
               }
           } 
       }
       stage('Deploy our image') { 
           steps { 
               script { 
                   docker.withRegistry( '', registryCredential ) { 
                       dockerImage.push() 
                   }
               } 
           }
       } 
    }  
}  
