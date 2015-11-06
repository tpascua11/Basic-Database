Web Application
==

* Build Tool: [Maven](https://maven.apache.org/)
* front end web application framework: [AngularJS](https://docs.angularjs.org/api)
* web package manager: [bower](http://bower.io/)
* front end css framework: [bootstrap](http://getbootstrap.com/css/)
* back end web application framework: [Spring](http://projects.spring.io/spring-framework/) 
* development server plugin: Jetty

in `/app`
Install javascript dependencies: `bower install`
Install dependencies with mavne: `mvn clean install`
Get odjbc6.jar from Oracle and put it in your java classpath, then run
`mvn install:install-file -DgroupId=com.oracle -DartifactId=ojdbc6 -Dversion=12.1.0.1 -Dpackaging=jar -Dfile=ojdbc6.jar -DgeneratePom=true`




