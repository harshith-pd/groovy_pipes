pipeline {
	agent any 
    triggers {
    	pollSCM('* * * * *')
  	}
	stages{
		stage("create build folder"){
			steps{
				sh '''
				#!/bin/sh
				mkdir -p ${WORKSPACE}/build
				cp -rf ${WORKSPACE}/* ${WORKSPACE}/build
				'''
			}
		}
		stage("run files"){
			steps{
				script{
					jenkins_file = fileLoader.load("hello_world/Jenkinsfile")
					jenkins_file.start()
				}
			}
			post {
				always{
					archiveArtifacts artifacts: "build/**/*"
				}
			}
		}
	}
}	