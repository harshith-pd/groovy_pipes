pipeline {
	agent any 
	stages{
		stage("run files"){
			steps{
				fileLoader.load("hello_world/Jenkinsfile")
			}
		}
	}
}