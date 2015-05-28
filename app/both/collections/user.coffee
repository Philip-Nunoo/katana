# User schema
Schemas.User = new SimpleSchema
	emails:
    	type: [Object]
    	optional: true

  	"emails.$.address":
    	type: String
    	regEx: SimpleSchema.RegEx.Email

  	"emails.$.verified":
    	type: Boolean

	createdAt:
  	type: Date

	profile:
  	type: Object
  	blackbox: true
  	optional: true

  services:
    type: Object
    optional: true
    blackbox: true

	roles:
	    type: [String]
	    blackbox: true
	    optional: true

  typeDoc: # based on user roles enter their doc
      type: Object
      blackbox: true
      optional: true

Meteor.users.helpers
  isAdmin: ->
    @roles.indexOf('admin') == 0

  isSchool: ->
    @roles.indexOf('school') == 0