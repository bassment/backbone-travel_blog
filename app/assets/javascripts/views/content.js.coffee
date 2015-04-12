class App.Views.Content extends Backbone.View
  className: 'container'

  template: HandlebarsTemplates['content']

  render: ->
    @$el.html(@template())
    @renderEmptyView()
    @renderTravelsView()
    this

  renderEmptyView: ->
    v = new App.Views.Empty()
    @$('#main-area').html(v.render().el)

  renderTravelsView: ->
    v = new App.Views.Travels()
    @$('#sidebar-area').html(v.render().el)