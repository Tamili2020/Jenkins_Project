pipeline{
    agent any
        stages{
            stage('git clone'){
                steps{
                    git branch: 'main', credentialsId: 'GithuCredential', url: 'https://github.com/Tamili2020/Jenkins_Project.git'
               }
           }
           stage('list'){
               steps{
                   sh 'ls'
               }
           }
           stage('delete container'){
               steps{
                   sh 'docker rm -f sip-calculator-poc || true'
               }
           }
           stage('delete image'){
               steps{
                   sh 'docker rmi -f sip-calculator-poc:2.0 || true'
               }
           }
           stage('build image'){
               steps{
                   sh 'docker build -t sip-calculator-poc:2.0 .'
               }
               
           }
           stage('Create container'){
               steps{
                   sh 'docker run -d -p 8081:80 --name sip-calculator-poc sip-calculator-poc:2.0'
               }
               
           }
       }
}
