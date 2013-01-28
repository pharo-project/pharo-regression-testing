running
runCase
	"Skip the test if we're in headless mode"
	Smalltalk isHeadless
		ifTrue: [ ^ self skip ].
	^ super runCase