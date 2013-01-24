running
runCommandLine: arguments
	| command result | 
	
	command := self temporaryImageCommand, ' ', arguments, ' >> ', self tempStdOutFile.
	result := OSProcess waitForCommand: command.
	self assert: result succeeded description: 'Failed Command:  ', command.
	
	self tempStdOutFile readStreamDo: [ :stream|
		^ stream contents ]