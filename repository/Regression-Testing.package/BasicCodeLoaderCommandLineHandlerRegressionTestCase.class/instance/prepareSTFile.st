tests
prepareSTFile
	
	| stFile |
	
	stFile := self tempFile , 'st'.
	stFile ensureDelete writeStreamDo: [ :stream|
		 stream 
			nextPutAll: 'FileStream stdout nextPutAll: 1 asString.'; cr;
			nextPutAll: 'FileStream stderr nextPutAll: 2 asString.'; cr;
			nextPutAll: 'Smalltalk exitSuccess' ].
	^ stFile