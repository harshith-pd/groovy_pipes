pipeline {
	agent any 
    triggers {
    	pollSCM('* * * * *')
  	}
	stages{
		stage("run files"){
			steps{
				script{
					jenkins_file = fileLoader.load("hello_world/Jenkinsfile")
					//jenkins_file.start()
				}
			}
			post {
				always{
					archiveArtifacts artifacts: "**/*"
				}
			}
		}
	}
}	