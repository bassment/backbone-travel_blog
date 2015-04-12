class App.Views.Travel extends Backbone.View
  tagName: 'li'
  attributes: ->
    'data-toggle': "pill"

  events:
    "click": "showDetails"

  showDetails: (event) ->
    event.preventDefault()
    App.Vent.trigger "travel:show", @model

  template: HandlebarsTemplates['travel']

  render: ->
    @$el.html(@template(@model.toJSON()))
    this