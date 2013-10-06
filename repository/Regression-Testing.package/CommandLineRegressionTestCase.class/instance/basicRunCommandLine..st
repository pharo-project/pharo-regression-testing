running
basicRunCommandLine: arguments
	"If we had a properly working popen interface I would not have to create an intermediate bash nor stdout file... "
	| process stdOut stdErr delay |
	
	self assert: arguments isArray description: 'Arguments has to be an Array'.
	
	stdOut := self tempStdOutFile ensureDelete writeStream.
	self assert: self tempStdOutFile exists.
	
	stdErr := self tempStdErrFile ensureDelete writeStream.
	self assert: self tempStdErrFile exists.
	delay := Delay forMilliseconds: 50.
		
	process := UnixProcess
				forkJob: Smalltalk vm fileName
				arguments: self vmArguments, arguments
				environment: nil
				descriptors: (Array with: nil with: stdOut with: stdErr).
	
	[ process runState == #complete ] whileFalse: [ delay wait ].

	stdOut close.
	stdErr close.
	
	self assert: process succeeded description: [ 'Failed Command:  ',  (self vmArguments , arguments) asString ].
	
	^ self stdOutContents