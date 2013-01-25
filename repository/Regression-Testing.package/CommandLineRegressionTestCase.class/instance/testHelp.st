tests
testHelp
	"All command line handlers should implement a help which basically prints the class comment"
	self runCommandLine: { self commandLineHandlerClass commandName. '--help' }.
	self 
		assert: self tempStdErrFile readStream contents trimmed 
		equals: self commandLineHandlerClass comment trimmed