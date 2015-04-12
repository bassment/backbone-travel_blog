class App.Views.Travels extends Backbone.View

  template: HandlebarsTemplates['travels']

  initialize: ->
    @collection.on "reset", @render, this
    @collection.fetch( {reset: true} )

  render: ->
    @$el.html(@template())
    @collection.forEach(@renderTravel, this)
    this

  renderTravel: (model) ->
    v = new App.Views.Travel({ model: model })
    @$('ul').append(v.render().el)