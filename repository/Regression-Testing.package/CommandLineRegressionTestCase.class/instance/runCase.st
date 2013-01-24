running
runCase
	self 
		spawnImageNewSessionDo: [ "nothing to do" ] 
		currentSessionDo: [ 	super runCase ]