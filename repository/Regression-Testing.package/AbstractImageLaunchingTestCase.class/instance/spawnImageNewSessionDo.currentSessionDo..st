running
spawnImageNewSessionDo: newSessionBlock  currentSessionDo: currentSessionBlock
	| session |
	session := Smalltalk session.
	
	self backupNewTemporaryImage.
	
	session == Smalltalk session
		ifTrue: newSessionBlock 
		ifFalse: currentSessionBlock