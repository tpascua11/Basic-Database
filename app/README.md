Web Application
==

* Build Tool: Maven
* front end web application framework: [AngularJS](https://docs.angularjs.org/api)
* web package manager: bower
* front end css framework: [bootstrap](http://getbootstrap.com/css/)
* back end web application framework: [Spring](http://projects.spring.io/spring-framework/) 
* development server plugin: Jetty

#### Tools you need to install
Mac OSX - I suggest [Homebrew](http://brew.sh/), Linux - use your package manager

* [Maven](https://maven.apache.org/) `brew install maven`
* [bower](http://bower.io/) `brew install bower`
* (you might need [npm](https://www.npmjs.com/) (node package manager)


#### Setup Project
* in `/app`
* Install javascript dependencies: `bower install`
* Install dependencies with maven: `mvn clean install`
* Get *odjbc6.jar* from [Oracle](http://www.oracle.com/technetwork/apps-tech/jdbc-112010-090769.html) (you will need to make an account) and put it in `0/app`, then run
```mvn install:install-file -DgroupId=com.oracle -DartifactId=ojdbc6 -Dversion=12.1.0.1 -Dpackaging=jar -Dfile=ojdbc6.jar -DgeneratePom=true```

#### Run Project
* `mvn jetty:run`


