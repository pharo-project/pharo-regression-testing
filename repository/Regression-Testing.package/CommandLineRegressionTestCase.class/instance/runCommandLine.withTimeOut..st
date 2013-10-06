running
runCommandLine: arguments withTimeOut: aDuration
	^ [ self basicRunCommandLine: arguments ] 
		valueWithin: aDuration 
		onTimeout: [ 
			self fail: 'A Timeout of more than ', aDuration asString, ' occured while running "', (arguments joinUsing: ' '), '"' ]