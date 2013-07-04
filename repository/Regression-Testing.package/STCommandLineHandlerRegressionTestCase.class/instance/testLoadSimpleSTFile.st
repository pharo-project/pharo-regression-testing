tests
testLoadSimpleSTFile

	self runCommandLine: { 'st'.  self prepareSTFile fullName }.
	self assert: self stdOutContents equals: '1'.
	self assert: self stdErrContents equals: '2'.