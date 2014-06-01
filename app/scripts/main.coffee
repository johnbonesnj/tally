"use strict"
app = angular.module('tallyApp', [])

app.controller('TallyListCtrl', ['$scope', '$http',
  ($scope, $http) ->
    $scope.appName = "Tally"
    $http.get('scripts/items.json').success (data) ->
      $scope.items = data
    $scope.orderProp = '-count'
])
