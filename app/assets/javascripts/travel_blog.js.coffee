window.App =
  Models: {}
  Collections: {}
  Views: {}
  Routers: {}
  initialize: ->
  	new App.Routers.MainRouter()
  	Backbone.history.start()

$(document).ready ->
  App.initialize()
