class App.Views.Travels extends Backbone.View

  template: HandlebarsTemplates['travels']

  events:
    'submit #new_travel': 'createTravel'

  initialize: ->
    @collection.on "reset", @render, this
    @collection.on "add", @renderTravel, this
    @collection.fetch( {reset: true} )

  render: ->
    @$el.html(@template())
    @collection.each(@renderTravel, this)
    this

  renderTravel: (travel) ->
    v = new App.Views.Travel({ model: travel })
    @$('#travels').append(v.render().el)

  createTravel: (event) ->
    event.preventDefault()
    attributes = header: $('#new_travel_header').val()
    @collection.create attributes,
    wait: true
    success: -> 
      $('#new_travel')[0].reset()
      Backbone.history.navigate('/')
    error: -> alert("Field can't be blank")