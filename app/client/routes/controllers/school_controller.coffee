@SchoolController = RouteController.extend
	onBeforeAction: ->
		if not Meteor.user() and not Meteor.loggingIn()
			Router.go '/login'
		else
			# if not Meteor.user().isSchool()
			# 	Router.go '/login'
			# else
			@layout 'schoolLayout'
		@next()
