pipeline {
	agent any 
    triggers {
    	pollSCM('* * * * *')
  	}
  	options{
  	    buildDiscarder(logRotator(numToKeepStr: '3', artifactNumToKeepStr: '3'))
  	}

	stages{
		stage("run files"){
			steps{
				script{
					sh "ls */*.groovy > ${WORKSPACE}/groovy_file_list"
					def files = readFile("${WORKSPACE}/groovy_file_list").split("\\r?\\n")
					files.each {
						file ->
						jenkins_file = fileLoader.load(file)
					} 
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