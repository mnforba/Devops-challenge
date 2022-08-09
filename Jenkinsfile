node
{

    stage("checkoutCodeGit") {
    git branch: 'main', credentialsId: 'GIT_HUB_CREDENTIALS', url: 'https://github.com/mnforba/Devops-challenge.git'
    }

    stage("build") {
    nodejs(nodeJSInstallationName: 'nodejs15.2.1') {
        sh 'npm install'
    }
    }

    stage("LintTest") {
    nodejs(nodeJSInstallationName: 'nodejs15.2.1') {
        sh 'npm eslint --save-dev'
	sh 'npm run lint'
    }
    }
    stage("PrettierTest") {
    nodejs(nodeJSInstallationName: 'nodejs15.2.1') {
        sh 'npm install prettier --save-dev'
        sh 'npm run prettier'
    }
    }
    stage("Test") {
    nodejs(nodeJSInstallationName: 'nodejs15.2.1') {
        sh 'CI=true npm run test'
    }
    }
    stage("Postbuild") {
    nodejs(nodeJSInstallationName: 'nodejs15.2.1') {
        sh 'npm run build'
    }
    }
    stage("ServeBuild") {
    nodejs(nodeJSInstallationName: 'nodejs15.2.1') {
        sh 'npm install -g serve'
        sh 'npm serve -s build'
    }
    }







}
