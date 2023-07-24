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
                        docker.withRegistry('890071746419.dkr.ecr.eu-central-1.amazonaws.com/elecrweb') {
                        app.push("${env.BUILD_NUMBER}")
                        app.push("latest")
                        }
                    }
            }
        }
    }
}
