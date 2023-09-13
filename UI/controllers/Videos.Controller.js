app.controller('Videos.Controller', function ($scope, $http, $location, $routeParams, $rootScope, $window, $cookies, AppService) {

    $scope.Videos = [];

    GetVideos();

    function GetVideos() {
        var body = {
            data : {}
        }

        var config = [{
            headers: {
              'XXX': 0
            },     
        }];

        var url = AppService.API_BASE_URL+'contents/get';

        $http.get(url, body, config).then(function successCallback(response) {
            if(response.status == 200){
                $scope.Videos = response.data;
            } else{
                $scope.Videos = [];
            }
        }, function errorCallback(response) {
            
        });
    }

    $scope.PlayVideoBTNClicked = function(index) {
        var body = {
            data : {}
        }

        var config = [{
            headers: {
              'XXX': 0
            },     
        }];

        var url = AppService.API_BASE_URL+'videos/get/id/'+$scope.Videos[index].id+'';

        $http.get(url, body, config).then(function successCallback(response) {
            if(response.status == 200){
                console.log(response.data);
                $scope.PreviewImage = response.data[0].videopath;
            } else{
                $scope.Videos = [];
            }
        }, function errorCallback(response) {
            $scope.Videos = [];
        });

        // $scope.PreviewImage = $scope.Videos[index].videopath;
        $scope.VideoName = $scope.Videos[index].title;
        $scope.VideoDescription = $scope.Videos[index].description;
        // ($scope.Videos[index].description).replace(/(?:\r\n|\r|\n)/g, "<br>");
        $('#PlayerModal').modal('show');
    }

    $scope.ExitVideoBTNClicked = function(index) {
        $scope.PreviewImage = '';
        $scope.VideoName = '';
        $scope.VideoDescription = '';
        $('#PlayerModal').modal('hide');
    }

    $scope.SearchVideoChanged = function () {
        var body = {
            data : {}
        }

        var config = [{
            headers: {
              'XXX': 0
            },     
        }];

        var url = ($scope.SearchVideo == undefined || $scope.SearchVideo == null || !$scope.SearchVideo || $scope.SearchVideo.trim().length <= 0)                  
                    ? AppService.API_BASE_URL+'contents/get'
                    : AppService.API_BASE_URL+'contents/get/title/'+$scope.SearchVideo+'';

        $http.get(url, body, config).then(function successCallback(response) {
            if(response.status == 200){
                $scope.Videos = response.data;
            } else{
                $scope.Videos = [];
            }
        }, function errorCallback(response) {
            $scope.Videos = [];
        });
    }
});