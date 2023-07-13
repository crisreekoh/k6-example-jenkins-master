pipeline {
    agent any
    stages {
        stage('Performance Testing') {
            steps {
                echo 'Installing k6'
                sh 'bash chmod +x setup_k6.sh'
                sh 'bash ./setup_k6.sh'
                echo 'Running K6 performance tests...'
                sh 'bash k6 run loadtests/performance-test.js'
            }
        }
    }
}
