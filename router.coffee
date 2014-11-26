Router.configure
  layoutTemplate: 'layout'

Router.route '/',
  template: 'TaskList'

Router.route 'tasks/edit/:_id',
  template: 'TaskEdit'
  name: "task.edit"
  data: ->
    Tasks.findOne(@params._id)

Router.route 'add',
  template: 'TaskAdd'
  name: "task.add"

Router.route 'tasks/:_id',
  template: 'Task'
  name: "task.show"
  data: ->
    Tasks.findOne(@params._id)
