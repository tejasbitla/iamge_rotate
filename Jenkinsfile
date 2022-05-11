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

        stage('Run Unit-Tests'){
            steps {
                dir('build') {
                    sh "make test"
                }
            } 
        }

        stage('Run the exec'){
            steps {
                dir('build') {
                    sh "./image_rotate ../plane.jpg plane_out.jpg"
                }
            } 
        }
    }
    post { 
        always { 
            archiveArtifacts artifacts: 'build/image_rotate', fingerprint: true
            cleanWs()
        }
    }
}