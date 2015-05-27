Meteor.startup ->

	if !!!Meteor.users.findOne({roles: roles.admin})
		id = Accounts.createUser
				email: admin.email
				password: admin.password
				profile: { name: admin.profile.name }

		if admin.roles.length > 0
			Roles.addUsersToRoles id, admin.roles