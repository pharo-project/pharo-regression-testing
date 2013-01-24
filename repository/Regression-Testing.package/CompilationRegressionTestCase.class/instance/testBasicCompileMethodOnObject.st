as yet unclassified
testBasicCompileMethodOnObject
	| selector |
	
	selector := #'_testBasicCompileMethodOnObject_test_method'.
	
	Object compile: selector, '
	^ #', selector.
	
	self assert: (Object respondsTo: selector).
	self assert: (Object new perform: selector) equals: selector
	