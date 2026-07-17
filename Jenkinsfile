node {

    stage('Checkout') {
        git 'https://github.com/bhavya-moulya/bhavya-maven-webapp.git'
    }

    stage('Build') {
        sh 'mvn clean package'
    }

    stage('Test') {
        sh 'echo "Build Successful"'
    }

    stage('Archive WAR') {
        archiveArtifacts artifacts: 'webapp/target/*.war', fingerprint: true
    }

}
