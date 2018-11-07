node{
	stage('building conditional'){
		agent any
		when {
			branch 'master'
		}
		steps{
			sh "echo hello"
		}
	}
}
return this