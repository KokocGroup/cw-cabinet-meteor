@Tasks = new Meteor.Collection("tasks")

Keyword =  new SimpleSchema
  word:
    label: "Слово"
    type: String
  plan:
    type: Number
    label: "План"
    min: 0
  fact:
    type: Number
    label: "Факт"
    min: 0

PagesSchema =  new SimpleSchema
  url:
    type: String
  title:
    type: String
  h1:
    type: String
  length:
    type: Number
    label: "Длина"
    min: 0
  plan:
    type: Number
    label: "План"
    min: 0
  fact:
    type: Number
    label: "Факт"
    min: 0
  document:
    label: "Ссылка на GoogleDoc"
    type: String
  keywords:
    type: [Keyword]
    label: "Слова"

Tasks.attachSchema new SimpleSchema
  title:
    type: String
    label: "Название"
  createDate:
    type: Date
    optional: true
    autoValue: ->
      if @isInsert then new Date() else @value
  pages:
    type: [PagesSchema]