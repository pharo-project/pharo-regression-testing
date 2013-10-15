running
skip: aMessage
	"Override skip to premturely stop execution of the test.
	Note that this method is run in the newly spawned image, hence we simply
	exit it."
	VTermOutputDriver stderr yellow: aMessage.
	Smalltalk exitSuccess.