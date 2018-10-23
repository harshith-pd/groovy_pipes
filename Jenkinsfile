pipeline {
	agent any 
    triggers {
    	pollSCM('* * * * *')
  	}
	stages{
		stage("run files"){
			steps{
				fileLoader.load("hello_world/Jenkinsfile")
			}
		}
	}
}