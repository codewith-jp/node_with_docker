pipeline {
    agent any
    options {
        skipStagesAfterUnstable()
    }
    stages {
        //  stage('Clone repository') { 
        //     steps { 
        //         script{
        //         checkout scm
        //         }
        //     }
        // }

        stage('Build') { 
            steps { 
                script{
                 app = docker.build("underwater")
                }
            }
        }
        stage('Test'){
            steps {
                 echo 'Empty'
            }
        }
        stage('Deploy') {
                  steps {
                    script{
                        docker.withRegistry("https://890071746419.dkr.ecr.eu-central-1.amazonaws.com/elecrweb",'ecr:eu-central-1:MYQ_AWS') {
                        
                            app = docker.build("my-image:${env.BUILD_ID}")
                            app.push()
                            // app.push("latest")
                        }
                    }
            }
        }
    }
}
