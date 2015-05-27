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