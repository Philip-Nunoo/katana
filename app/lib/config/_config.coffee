@roles = 
	admin: ['admin']
	school: ['school']
	student: ['student']
	teacher: ['teacher']
	parent: ['parent']

@admin = 
	email: 'admin@example.com'
	password: 'candycrush'
	profile: { name: 'admin'}
	roles: roles.admin