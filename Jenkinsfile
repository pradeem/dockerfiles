node {
    checkout scm

    docker.withRegistry('https://hub.docker.com/repository/docker/pradeem/myrepo', 'dockerhubid') {

        def customImage = docker.build("my-image:${env.BUILD_ID}")

        /* Push the container to the custom Registry */
        customImage.push()
    }
}
