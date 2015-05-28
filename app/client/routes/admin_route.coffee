Router.map ->
	# The admin dashboard
	@route 'adminDashboard',
		path: '/admin'
		template: 'adminDashboard'
		controller: 'AdminController'
		onWait: ->
			return

	# Admin create school
	@route 'adminSchools',
		path: '/admin/schools'
		template: 'adminSchools'
		controller: 'AdminController'
		onWait: ->
			return

	# Admin new school,
	@route 'adminNewSchool',
		path: '/admin/new/school'
		template: 'adminNewSchool'
		controller: 'AdminController'
		onWait: ->
			return