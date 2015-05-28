Meteor.methods
	'newStudent': (doc)->
		u = Meteor.users.findOne @userId
		check doc, Schemas.Students

		if u._id
			# Create student account
			# Assign student role to account
			if u.isSchool()
				doc.school = u._id
			else if u.isAdmin() and !!doc.school 
				throw new Meteor.Error "404", 'No school specified', details
				
			
			console.log doc
			id = Accounts.createUser
					email: doc.email
					password: 'spassword'
					profile: { name: "#{doc.last_name} #{doc.first_name}" }
					typeDoc: doc

			Roles.addUsersToRoles id, roles.student
			
		else
			throw new Meteor.Error "404", 'Error 404: Not found'
		