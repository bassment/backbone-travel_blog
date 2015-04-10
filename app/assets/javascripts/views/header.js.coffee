class App.Views.Header extends Backbone.View
	className: 'navbar navbar-inverse'

	template: HandlebarsTemplates['header']

	render: ->
		@$el.html(@template())
		this