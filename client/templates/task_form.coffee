AutoForm.addHooks ['TaskInsertForm', 'TaskEditForm'],
  onSuccess: (operation, result) ->
    Router.go 'task.show',
      _id: if operation is 'update' then @docId else result