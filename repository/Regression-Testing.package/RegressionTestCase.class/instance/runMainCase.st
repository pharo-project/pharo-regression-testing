running
runMainCase
	"launch the newly created test image and wait for a proper result "
	| result |
	result := OSProcess waitForCommand: self testImageCommand.
	self deleteTestImage.
	result succeeded 
		ifFalse: [ 
			self defaultTestFailure signal: 'Test failed' ]