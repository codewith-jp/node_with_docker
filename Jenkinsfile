pipeline {
    // agent { dockerfile true }
    agent any
    stages {
        stage('Initialize')
        {
            def dockerHome = tool 'Mdocker'
            env.PATH = "${dockerHome}/bin:${env.PATH}"
        }
        stage('Test') {
            steps {
                sh 'docker --version'
                // sh 'svn --version'
            }
        }
    }
}