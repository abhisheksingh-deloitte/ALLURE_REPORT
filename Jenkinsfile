pipeline {
        agent any
        stages {
                stage('Robot tests') {
                    steps {
                            bat 'robot -d Results --loglevel TRACE --listener allure_robotframework;./allure-results ./Tests'
                            allure includeProperties: false, jdk: '', results: [[path: '/allure-results']]
                    }
                }
        }
         post {
                success {
                                mail bcc: '', body: '''Build is successful. congratulation !!
Enjoy your build and have chai :)''', cc: '', from: '', replyTo: '', subject: 'Build Report for multibranch pipeline project', to: '1rn18ec010.abhisheksingh@gmail.com'

                }

                failure {
                            mail bcc: '', body: '''Build Failed !! :<Relax don\'t panic and have chai :)''', cc: '', from: '', replyTo: '', subject: 'Build Report for multibranch pipeline project', to: '1rn18ec010.abhisheksingh@gmail.com'
                }


        }
}

