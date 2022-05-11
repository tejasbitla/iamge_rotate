pipeline {
    agent any
    stages {
        stage('Build Image_Rotate'){
            steps {
                script {
                    sh """
                        ls -lart 
                        mkdir build && cd build
                        cmake ..
                        make 
                        ls -lrt 
                    """

        

                }
            }
        }
    }
    post {
        always {
            cleanWS()
        }
    }
}