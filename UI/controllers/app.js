var app = angular.module('app', ['ngRoute', 'ngCookies', 'ngFileUpload']);

app.service('AppService', function() {
    this.API_BASE_URL = 'http://localhost:3000/api/';
});


app.config(function ($routeProvider) {
    $routeProvider.when('/Videos', {
        templateUrl: '/views/Videos.html',
        controller: 'Videos.Controller'
    });

    $routeProvider.otherwise({ 
        redirectTo: '/Videos' 
    });
});