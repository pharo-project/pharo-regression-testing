running
spawnImageNewSessionDo: newSessionBlock  currentSessionDo: currentSessionBlock
	
	self backupNewTestImage
		ifTrue: newSessionBlock 
		ifFalse: currentSessionBlock