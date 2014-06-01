tallyApp = angular.module("tallyApp", [
  "ngRoute"
  "tallyControllers"
  "tallyFilters"
])

tallyApp.config [
  "$routeProvider"
  ($routeProvider) ->
    $routeProvider.when("/items",
      templateUrl: "partials/item-list.html"
      controller: "TallyListCtrl"
    ).when("/items/:itemId",
      templateUrl: "partials/item-detail.html"
      controller: "TallyDetailCtrl"
    ).otherwise redirectTo: "/items"
]
