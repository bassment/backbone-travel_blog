class App.Views.TravelDetails extends Backbone.View

  template: HandlebarsTemplates['travel_details']

  render: ->
    @$el.html(@template(@model.toJSON()))
    this