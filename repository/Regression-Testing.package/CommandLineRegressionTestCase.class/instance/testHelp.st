tests
testHelp
	self assert: (self runCommandLine: { '--help' }) equals: self newCommandLineHandler comment