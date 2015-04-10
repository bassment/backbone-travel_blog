class App.Views.Content extends Backbone.View
  className: 'container'

  template: HandlebarsTemplates['content']

  render: ->
    @$el.html(@template())
    this