"use strict";
var app;

app = angular.module('tallyApp', []);

app.controller('TallyListCtrl', [
  '$scope', '$http', function($scope, $http) {
    $scope.appName = "Tally";
    $http.get('scripts/items.json').success(function(data) {
      return $scope.items = data;
    });
    return $scope.orderProp = '-count';
  }
]);
