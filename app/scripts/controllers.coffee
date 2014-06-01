tallyControllers = angular.module("tallyControllers", [])
tallyControllers.controller "TallyListCtrl", [
  "$scope"
  "$http"
  ($scope, $http) ->
    $http.get("scripts/items.json").success (data) ->
      $scope.items = data
      return

    $scope.orderProp = "-count"
]
tallyControllers.controller "TallyDetailCtrl", [
  "$scope"
  "$routeParams"
  "$http"
  ($scope, $routeParams, $http) ->
    $http.get("scripts/" + $routeParams.itemId + ".json").success (data) ->
      $scope.item = data
      $scope.startCount = data.count
      return
    $scope.incCount = (item) ->
      item.count += 1
    $scope.decCount = (item) ->
      item.count -= 1



]
