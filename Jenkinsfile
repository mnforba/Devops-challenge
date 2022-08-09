node
{

    stage("checkoutCodeGit) {
    git branch: 'main', credentialsId: 'GIT_HUB_CREDENTIALS', url: 'https://github.com/mnforba/Devops-challenge.git'
    }

    stage("build") {
    nodejs(NodeJSInstallationName: 'nodejs15.2.1') {
        sh 'npm install'
    }
    }

    stage("LintTest") {
    nodejs(NodeJSInstallationName: 'nodejs15.2.1') {
        sh 'npm eslint --save-dev'
	sh 'npm run lint'
    }
    }
    stage("PrettierTest") {
    nodejs(NodeJSInstallationName: 'nodejs15.2.1') {
        sh 'npm eslint --save-dev'
        sh 'npm run prettier'
    }
    }




}
