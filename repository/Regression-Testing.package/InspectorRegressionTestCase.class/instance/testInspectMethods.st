tests
testInspectMethods
	self methods do: [ :method| 
		self inspect: method ]