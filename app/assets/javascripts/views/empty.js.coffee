class App.Views.Empty extends Backbone.View

  className: 'well well-lg'

  render: ->
    @$el.html('<h3>Click on Travel from aside!</h3>')
    this