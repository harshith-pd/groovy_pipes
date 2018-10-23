pipeline {
	agent any 
	pollSCM('* * * * *')
	stages{
		stage("run files"){
			steps{
				fileLoader.load("hello_world/Jenkinsfile")
			}
		}
	}
}