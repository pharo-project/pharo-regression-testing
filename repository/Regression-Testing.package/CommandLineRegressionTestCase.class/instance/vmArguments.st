accessing
vmArguments
	" return the default arguments for the VM "
	^ Array streamContents: [ :s|
		s nextPutAll: (Smalltalk vm options reject: [ :each| each = Smalltalk vm headlessOption ]).
		self headless
			ifTrue: [ s nextPut: Smalltalk vm headlessOption ].
		s nextPut: Smalltalk imagePath  ]