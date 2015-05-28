Router.map ->
	# The school dashboard
	@route 'schoolDashboard',
		path: '/school'
		template: 'schoolDashboard'
		controller: 'SchoolController'
		onWait: ->
			return

	# The school students
	@route 'schoolStudents',
		path: '/school/students'
		template: 'schoolStudents'
		controller: 'SchoolController'
		onWait: ->
			return

	# Create new student
	@route 'schoolNewStudent',
		path: '/school/new/student'
		template: 'schoolNewStudent'
		controller: 'SchoolController'
		onWait: ->
			return
			
	# The schools staffs
	@route 'schoolStaffs',
		path: '/school/staffs'
		template: 'schoolStaffs'
		controller: 'SchoolController'
		onWait: ->
			return
