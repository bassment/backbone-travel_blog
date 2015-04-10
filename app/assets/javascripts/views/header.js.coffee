class App.Views.Header extends Backbone.View
	className: 'navbar navbar-inverse navbar-fixed-top'

	template: HandlebarsTemplates['header']

	render: ->
		@$el.html(@template())
		this