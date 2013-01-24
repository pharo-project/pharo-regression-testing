running
backupNewTemporaryImage
	"unlike the super implementation, save the new image in a new thread detached from this one"
	| imageSavingComplete |
	imageSavingComplete := Semaphore new.
	[ 
		UIManager default defer: [ super backupNewTemporaryImage ].
		imageSavingComplete signal ] fork.
	imageSavingComplete wait. 