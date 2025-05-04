pipeline {
    agent any

    tools {
        maven "MVN_399" // Asegúrate de que este nombre esté definido en Jenkins para Maven 3.9.9
    }

    stages {
        stage('Clonar desde GitHub') {
            steps {
                git 'https://github.com/usuario/repositorio-ejemplo.git' // Reemplaza con tu URL real
            }
        }

        stage('Compilar y Empaquetar') {
            steps {
                dir('nombreDelProyecto') { // Reemplaza con el nombre del directorio que crea Git
                    sh 'mvn clean compile package -B'
                }
            }
        }

        stage('Desplegar en Tomcat') {
            steps {
                dir('nombreDelProyecto') {
                    deploy adapters: [
                        tomcat9(
                            credentialsId: 'tomcatid',
                            path: '',
                            url: 'http://localhost:8082'
                        )
                    ],
                    contextPath: 'MiAppDesdeJenkins', // Puedes cambiar esto si quieres otra ruta
                    war: 'target/*.war'
                }
            }
        }
    }
}
