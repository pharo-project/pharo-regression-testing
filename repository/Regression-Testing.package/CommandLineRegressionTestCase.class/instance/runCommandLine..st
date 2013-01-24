running
runCommandLine: arguments
	"If we had a properly working popen interface I would not have to create an intermediate bash nor stdout file... "
	| result | 
	self tempBashFile ensureDeleted writeStreamDo: [ :str |
		str 
			nextPutAll: '#!/bin/bash'; lf;
			nextPutAll: self temporaryImageCommand; space; nextPutAll: arguments;
			nextPutAll: ' 1> '; nextPutAll: self tempStdOutFile basename;
			nextPutAll: ' 2> '; nextPutAll: self tempStdErrFile basename ].
		
	result := OSProcess waitForCommand: 'bash ', self tempBashFile basename.
	self assert: result succeeded description: 'Failed Command:  ', self tempBashFile basename.
	
	self tempStdOutFile readStreamDo: [ :stream|
		^ stream contents ]