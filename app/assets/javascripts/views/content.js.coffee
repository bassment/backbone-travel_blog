class App.Views.Content extends Backbone.View
  className: 'container'

  template: HandlebarsTemplates['content']

  initialize: ->
    @listenTo App.Vent, "travel:show", @travelShow

  travelShow: (model) ->
    @swapMain(new App.Views.TravelDetails({ model: model }))

  render: ->
    @$el.html(@template())
    this

  swapMain: (v) ->
    @changeCurrentMainView(v)
    @$('#main-area').html(@currentMainView.render().el)

  changeCurrentMainView: (v) ->
    @currentMainView.remove() if @currentMainView
    @currentMainView = v

  swapSide: (v) ->
    @changeCurrentSideView(v)
    @$('#sidebar-area').html(@currentSideView.render().el)

  changeCurrentSideView: (v) ->
    @currentSideView.remove() if @currentSideView
    @currentSideView = v