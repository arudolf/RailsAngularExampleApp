@NotesCtrl = ($scope, $http) ->
  $scope.title = "Notes"
  $scope.notes = []

  $scope.clear = ->
    $scope.note = {}
  $scope.clear()

  loadNotes = ->
    $http.get('./notes.json').success( (data) ->
      $scope.notes = data
      console.log('Successfully loaded notes.')
    ).error( ->
      console.error('Failed to load notes.')
    )
  loadNotes()

  $scope.createNote = ->
    $http.post('./notes.json', $scope.note).success( (data) ->
      $scope.notes.splice(0, 0, data);
      $scope.clear()
      console.log('Successfully created note.')
    ).error( ->
      console.log('Failed to create new note.')
    )
