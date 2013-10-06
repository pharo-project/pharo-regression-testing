tests
testAddInstanceVariableAPI
	self skip: 'Currently not supported by the VM for certain classes'.
	"add a new instance Variable to HashedCollection"
	HashedCollection addInstVarNamed: '__foo__' 