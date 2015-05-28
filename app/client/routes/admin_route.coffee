Router.map ->
	# The admin dashboard
	@route 'adminDashboard',
		path: '/admin'
		template: 'adminDashboard'
		controller: 'AdminController'

	# Admin create school
	@route 'adminSchools',
		path: '/admin/schools'
		template: 'adminSchools'
		controller: 'AdminController'