tests
testBrowseCoreClassesInstances
	self coreClasses do: [ :cls |
		self browse: cls someInstance ]