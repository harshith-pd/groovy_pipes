pipeline {
	agent any 
	stages{
		stage("run files"){
			steps{
				jenkinsfile = fileLoader.load("*/Jenkinsfile")
			}
		}
	}
}