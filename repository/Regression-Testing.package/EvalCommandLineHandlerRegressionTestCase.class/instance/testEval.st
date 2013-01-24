tests
testEval
	self assert: (self runCommandLine: 'eval "1+2"') equals: '3'.
	self assert: (self runCommandLine: 'eval "5 + 5"') equals: '10'.
	self assert: (self runCommandLine: 'eval "Array asString"') equals: Array asString.