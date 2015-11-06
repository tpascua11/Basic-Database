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
* [npm](https://www.npmjs.com/) (node package manager) for bower 
* [bower](http://bower.io/) `npm install -g bower`


#### Setup Project
* in `/app`
* Install javascript dependencies: `bower install`
* Install dependencies with maven: `mvn clean install`
* Get *odjbc6.jar* from [Oracle](http://www.oracle.com/technetwork/apps-tech/jdbc-112010-090769.html) (you will need to make an account) and put it in `0/app`, then run
```mvn install:install-file -DgroupId=com.oracle -DartifactId=ojdbc6 -Dversion=12.1.0.1 -Dpackaging=jar -Dfile=ojdbc6.jar -DgeneratePom=true```

#### Run Project
* `mvn jetty:run`
* navigate to [localhost:8080/app/](localhost:8080/app/) in your web browser
Changes are live for the front end, so any javascript or HTML will be updated on page refresh. 
The server must be stopped and rerun to recompile the back end java.


#### Getting Started
All of the bootstrap css documentation is helpful, the grid system is good to use. The bootstrap javascript has some cool stuff.
[bootstrap css grid](http://getbootstrap.com/css/#grid)
[bootstrap javascript](http://getbootstrap.com/javascript/)
[angular tutorial](https://docs.angularjs.org/tutorial/step_00)
