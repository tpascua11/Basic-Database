<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html ng-app='WebApp'>

  <head>
    <meta charset="utf-8">
    <title></title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width">
    <!-- Place favicon.ico and apple-touch-icon.png in the root directory -->
    <!-- build:css(.) styles/vendor.css -->
    <!-- bower:css -->
    <!-- endbower -->
    <!-- endbuild -->
    <!-- build:css(.tmp) styles/main.css -->
    <link rel='stylesheet' href='webjars/bootstrap/3.2.0/css/bootstrap.min.css'>
    <link rel="stylesheet" href="styles/main.scss">
    <!-- endbuild -->
  </head>
  <body ng-controller="MainCtrl">

    <!-- main view -->
    <div id="main-content" class="container-fluid" ng-view=""></div>

    <!-- build:js(.) scripts/vendor.js -->
    <!-- bower:js -->
    <script type="text/javascript" src="webjars/jquery/2.1.1/jquery.min.js"></script>
    <script src="bower_components/jquery/dist/jquery.js"></script>
    <script type="text/javascript" src="webjars/bootstrap/3.2.0/js/bootstrap.min.js"></script>
    <script src="bower_components/angular/angular.js"></script>
    <script src="bower_components/angular-animate/angular-animate.js"></script>
    <script src="bower_components/angular-cookies/angular-cookies.js"></script>
    <script src="bower_components/angular-resource/angular-resource.js"></script>
    <script src="bower_components/angular-route/angular-route.js"></script>
    <script src="bower_components/angular-sanitize/angular-sanitize.js"></script>
    <script src="bower_components/angular-touch/angular-touch.js"></script>
    <!--script type="text/javascript" src="webjars/bootstrap/3.2.0/js/bootstrap.min.js"></script>
    <!-- endbower -->
    <!-- endbuild -->

    <!-- build:js({.tmp,app}) scripts/scripts.js -->
    <script src="js/app.js"></script><!-- our controller -->
    <script src="js/controllers/main.js"></script>
    <script src="js/controllers/home.js"></script>
    <!-- endbuild -->

</body>
</html>
