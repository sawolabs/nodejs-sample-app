const scanner = require('sonarqube-scanner');

scanner(
  {
    serverUrl : 'http://localhost:9000/',
    token : "sqp_7c6df26ff26031fa62f4c57849b23896bb7291cc",
    options: {
      'sonar.projectName': 'TestProject',
      'sonar.projectDescription': 'Description for "My App" project...',
      'sonar.sources': '.',
      'sonar.language': 'js'
    }
  },
  () => {}
)
