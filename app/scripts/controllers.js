var tallyControllers;

tallyControllers = angular.module("tallyControllers", []);

tallyControllers.controller("TallyListCtrl", [
  "$scope", "$http", function($scope, $http) {
    $http.get("scripts/items.json").success(function(data) {
      $scope.items = data;
    });
    return $scope.orderProp = "-count";
  }
]);

tallyControllers.controller("TallyDetailCtrl", [
  "$scope", "$routeParams", "$http", function($scope, $routeParams, $http) {
    $http.get("scripts/" + $routeParams.itemId + ".json").success(function(data) {
      $scope.item = data;
      $scope.startCount = data.count;
    });
    $scope.incCount = function(item) {
      return item.count += 1;
    };
    return $scope.decCount = function(item) {
      return item.count -= 1;
    };
  }
]);
