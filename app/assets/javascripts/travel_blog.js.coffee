window.App =
  Models: {}
  Collections: {}
  Views: {}
  Routers: {}
  Vent: _.clone(Backbone.Events)
  initialize: ->
  	new App.Routers.MainRouter()
  	Backbone.history.start()

$(document).ready ->
  App.initialize()
