angular.module("tallyFilters", []).filter("checkmark", function() {
  return function(input) {
    if (input) {
      return "✓";
    } else {
      return "✘";
    }
  };
});
