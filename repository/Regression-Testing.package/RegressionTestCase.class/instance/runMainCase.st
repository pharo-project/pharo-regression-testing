running
runMainCase
	"launch the newly created test image and wait for a proper result "
	| result |
	result := OSProcess waitForCommand: self temporaryImageCommand.
	self deleteTemporaryImage.
	result succeeded 
		ifFalse: [ 
			self defaultTestFailure signal: 'Test failed, image was terminated with signal ', result exitStatus asString ]