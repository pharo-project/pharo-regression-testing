running
runCase
	self 
		spawnImageNewSessionDo: [ super runCase ] 
		currentSessionDo: [ 
			self runMainCase ]