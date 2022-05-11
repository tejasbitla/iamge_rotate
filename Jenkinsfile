pipeline {
    agent any
    stages {
        stage('Build Image_Rotate'){
            steps {
                script {
                    sh """
                        
                        mkdir build && cd build
                        cmake ..
                        make 
                        ls -lrt 
                    """

        

                }
            }
        }
        //docker file step to create a image
       /* stage('Build Docker-Image'){
            steps {
                script {
                    sh "docker build -t reponame/imagerotate ."
                }
            } 
        }*/
        //runing unit tests
        stage('Run Unit-Tests'){
            steps {
                dir('build') {
                    sh "make test"
                }
            } 
        }

          //executing step for image rotate.png 
        stage('Run the exec'){
            steps {
                dir('build') {
                    sh "./image_rotate ../plane.jpg plane_out.jpg"
                }
            } 
        }
    }
    //storing of image in dummy artifactory
    post { 
        always { 
            archiveArtifacts artifacts: 'build/image_rotate', fingerprint: true
            cleanWs()
        }
    }
}