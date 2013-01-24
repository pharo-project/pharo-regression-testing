running
backupNewTestImage
	| oldImageName newImageName |
	self deleteTestImage.
	newImageName := self testImageName.
	oldImageName := Smalltalk shortImageName.
	^ Smalltalk backupTo: newImageName