class App.Views.Travel extends Backbone.View
  tagName: 'li'
  attributes: ->
    'data-toggle': "pill"

  template: HandlebarsTemplates['travel']

  render: ->
    @$el.html(@template(@model.toJSON()))
    this