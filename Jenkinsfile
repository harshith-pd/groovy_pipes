pipeline {
	agent any 
    triggers {
    	pollSCM('* * * * *')
  	}
	stages{
		stage("run files"){
			steps{
				script{
				fileLoader.load("hello_world/Jenkinsfile")
				}
			}
		}
	}
}