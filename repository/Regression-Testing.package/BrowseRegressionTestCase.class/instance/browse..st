helper
browse: anObject
	|inspector|
	inspector := anObject browse.
	World doOneCycle. 
	inspector close 