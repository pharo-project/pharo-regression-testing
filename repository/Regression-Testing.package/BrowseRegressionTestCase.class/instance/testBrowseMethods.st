tests
testBrowseMethods
	self methods do: [ :method |
		self browse: method ]