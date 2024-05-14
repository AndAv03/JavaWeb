pipeline {
    agent any
     tools {
        maven 'Maven' 
        }
    stages {
        stage("Jenkins Demo - Test"){
            steps{
                echo "Testing Maven Project..."
                sh '''
                echo "Testing Maven Project..."
                mvn test
                '''                
            }
            
        }
        stage("Jenkins Demo - Build"){
            steps{
                echo "Builing Maven Project..."
                sh '''
                echo "Builing Maven Project..."
                mvn package
                '''                
            }
            
        }
        stage("Jenkins Demo - Deploy on Test"){
            steps{
                echo "Deploying Project on Test Environment..."
                deploy adapters: [tomcat9(credentialsId: 'tomcatid', path: '', url: 'http://localhost:8081')], contextPath: '/firstWebApplication', war: '**/*.war'              
            }
            
        }
        stage("Jenkins Demo - Deploy on Prod"){
             input {
                message "Should we Deploy to Prod?"
                ok "Authorize"
            }
            
            steps{
                echo "Deploying Project on Prod Environment..."
                deploy adapters: [tomcat9(credentialsId: 'tomcatid', path: '', url: 'http://localhost:8081')], contextPath: '/firstWebApplication', war: '**/*.war'

            }
        }
    }
    post{
        always{
            echo "========always========"
        }
        success{
            echo "========pipeline executed successfully ========"
        }
        failure{
            echo "========pipeline execution failed========"
        }
    }
}
