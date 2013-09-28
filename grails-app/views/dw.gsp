<html ng-app="testApp">
	<head>
		<title></title>
	</head>
	<body>
		<div ng-controller="TestCtrl">
			<a href="#" ng-click="myfunc()">Test</a>
		<div>
	</body>

	<script src="http://ajax.googleapis.com/ajax/libs/angularjs/1.0.7/angular.min.js"></script>
	<script>
	var contextPath = "${request.contextPath}";
	angular.module('testApp', []).
	controller('TestCtrl', function($scope, $http){
		$scope.myfunc = function(){
			$http.get(contextPath + "/api/hello-world")
			.success(function(data, status){ console.log("yup"); })
			.error(function(data, status){ console.log("nope"); })
		}
	});
	</script>
</html>