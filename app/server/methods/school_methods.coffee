Meteor.methods
	'createSchool': (doc)->
		u = Meteor.users.findOne @userId
		check doc, Schemas.Schools

		if u._id and u.isAdmin()
			# run create user method
			# Account.user.create
			console.log doc
			id = Accounts.createUser
					email: doc.email
					password: 'password'
					profile: { name: doc.name }

			Roles.addUsersToRoles id, roles.school

		else
			throw new Meteor.Error "404", 'Error 404: Not found'