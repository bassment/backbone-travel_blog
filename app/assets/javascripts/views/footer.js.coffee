class App.Views.Footer extends Backbone.View
  className: 'navbar navbar-inverse navbar-fixed-bottom'

  template: HandlebarsTemplates['footer']

  render: ->
    @$el.html(@template())
    this