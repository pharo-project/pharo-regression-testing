tests
testBrowseTraitUser
	self aTrait users do: [ :aClass |
		self browse: aClass.
		self browse: aClass class ]