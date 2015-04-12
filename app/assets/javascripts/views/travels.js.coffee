class App.Views.Travels extends Backbone.View

  template: HandlebarsTemplates['travels']

  render: ->
    @$el.html(@template())
    this