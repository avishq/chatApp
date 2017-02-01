var app = angular.module('myApp', []);
app.controller('myCtrl', function($scope, $http) {
	$scope.submitEmail = function() {
		var url = "/testWebApp/insertEmail/" + $scope.emailValue
		$http.post(url).then(function(response) {
			data = response.data
			var emailElement = document.getElementById("emailSubmitResponse");
			emailElement.style.display = "block";

			if (data.sucess) {
				emailElement.style.color = "#4CAF50";
			} else {
				emailElement.style.color = "#f44842";
			}
			emailElement.innerHTML = data.responce;
			$scope.emailValue = "";
			$('#emailSubmitResponse').delay(5000).fadeOut(5000);
		});
	}
});