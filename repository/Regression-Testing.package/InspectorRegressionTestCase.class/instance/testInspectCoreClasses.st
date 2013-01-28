tests
testInspectCoreClasses
	self coreClasses do: [ :cls|
		self inspect: cls ]