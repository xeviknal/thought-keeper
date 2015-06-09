@ListCtrl = ($scope) ->
  $scope.entries = [
    {name: "Verunko"}
    {name: "Martinko"}
    {name: "Ferran"}
    {name: "Nati"}
    {name: "Jaume"}
  ]

  $scope.addEntry = ->
    $scope.entries.push($scope.newList)
    $scope.newList = {}
