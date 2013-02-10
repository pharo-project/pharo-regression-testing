running
runCase
	self 
		spawnImageNewSessionDo: [ 
			[ super runCase ]
				on: Error do: [ :e | 
					self handleTestError: e]] 
		currentSessionDo: [ 
			self runMainCase ]