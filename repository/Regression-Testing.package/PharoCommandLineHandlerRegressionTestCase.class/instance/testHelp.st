tests
testHelp
	"All command line handlers should implement a help which basically prints the class comment"
	self runCommandLine: { '--help' }.
	self 
		assert: self stdErrContents lines 
		equals: self commandLineHandlerClass comment trimmed lines