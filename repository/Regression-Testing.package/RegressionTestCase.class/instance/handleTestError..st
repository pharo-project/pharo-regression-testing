running
handleTestError: anError
	[ FileStream stderr print: anError ]
		ensure: [ Smalltalk exitFailure ].