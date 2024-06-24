pipeline {
  agent {
    node {
      label 'ci-server'
    }
  }

  parameters {
    string(name: 'PERSON', defaultValue: 'Mr Jenkins', description: 'Who should I say hello to?')

    text(name: 'BIOGRAPHY', defaultValue: '', description: 'Enter some information about the person')

    booleanParam(name: 'TOGGLE', defaultValue: true, description: 'Toggle this value')

    choice(name: 'CHOICE', choices: ['One', 'Two', 'Three'], description: 'Pick something')

    password(name: 'PASSWORD', defaultValue: 'SECRET', description: 'Enter a password')
  }

  environment {
    MYURL="jenkins.com"
  }

  stages {
    stage('Example') {
      input {
        message "Should we continue?"
        ok "Yes, we should."
        submitter "alice,bob"
        parameters {
          string(name: 'PERSON', defaultValue: 'Mr Jenkins', description: 'Who should I say hello to?')
        }
      }
      steps {
        echo 'Hello World'
      }
    }

    stage('Example1') {
      when { triggeredBy 'SCMTrigger' }
      steps {
        echo 'Hello World'
      }
    }

    stage('Parallel Stage') {
      parallel {

        stage('Example2') {
          steps {
            echo 'Hello World'
          }
        }

        stage('Example3') {
          steps {
            echo 'Hello World'
          }
        }
      }
    }

  }
}