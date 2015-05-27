@AdminController = RouteController.extend
	# layoutTemplate: 'adminLayout'
	action: ->
		if not Meteor.user() and not Meteor.loggingIn()
			@layout 'homeLayout'
			Router.go '/login'
		else
			@layout 'adminLayout'
	onBeforeAction: ->
		@next()
		