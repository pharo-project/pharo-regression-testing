tests
testAddInstanceVariableIndirect
	self skip: 'Currently not supported by the VM for certain classes'.
	"add a new instance Variable to HashedCollection"
	Collection subclass: #HashedCollection
		instanceVariableNames: 'tally array __foo__'
		classVariableNames: ''
		poolDictionaries: ''
		category: 'Collections-Abstract'