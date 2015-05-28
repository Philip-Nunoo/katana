Router.map ->
	@route 'home',
		path: '/'
		template: 'homePage'
		controller: 'MainController'

	@route 'signOut',
		name: 'logout'
		onBeforeAction: ->
			Meteor.logout()
			Router.go '/'
			@next()

	@route 'sign-in',
		name: 'signin'
		path: '/login'
		template: 'login'
		layoutTemplate: 'blankLayout'
		redirect: ->
	        user = Meteor.user()

	        if (user)
	        	Router.go '/dashboard'

# AccountsTemplates.configureRoute 'sign-in'	