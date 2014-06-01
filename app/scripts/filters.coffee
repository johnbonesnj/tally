angular.module("tallyFilters", []).filter "checkmark", ->
  (input) ->
    (if input then "✓" else "✘")
