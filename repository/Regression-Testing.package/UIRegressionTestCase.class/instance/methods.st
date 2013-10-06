accessing
methods
	"a collection of representative methods"
	^ { 
		Object >> #name. "a simple instance method"
		Object class >> #initialize. "a simple class-side method"
		TBehavior >> #selectors. "an instance method on a trait " 
		Behavior >> #compile:. "a trait method installed on instance side"
		"MISSING a trait method installed on class side" }