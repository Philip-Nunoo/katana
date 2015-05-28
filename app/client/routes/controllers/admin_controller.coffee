@AdminController = RouteController.extend
	# layoutTemplate: 'adminLayout'
	onBeforeAction: ->
		if not Meteor.user() and not Meteor.loggingIn()
			Router.go '/login'
		else
			@layout 'adminLayout'
		@next()
		