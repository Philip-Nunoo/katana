@AdminController = RouteController.extend
	# layoutTemplate: 'adminLayout'
	onBeforeAction: ->
		if not Meteor.user() and not Meteor.loggingIn()
			Router.go '/login'
		else
			if not Meteor.user().isAdmin()
				Router.go '/login'
			else
				@layout 'adminLayout'
		@next()
		