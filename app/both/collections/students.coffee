Schemas.Students = new SimpleSchema
	first_name:
		type: String
		optional: false

	last_name:
		type: String
		optional: false

	other_names:
		type: String
		optional: true

	date_of_birth:
		type: Date
		optional: false

	email:
		type: String
		optional: false

	note:
		type: String
		optional: true

	school:
		type: String
		optional: true
		label: 'School'
		regEx: SimpleSchema.RegEx.Id
