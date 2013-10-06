tests
testInspectCoreClassesInstances
	self coreClasses do: [ :cls|
		self inspect: cls someInstance ]