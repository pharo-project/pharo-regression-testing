tests
testVersion
	self assert: (self runCommandLine: #('printVersion')) size > 0