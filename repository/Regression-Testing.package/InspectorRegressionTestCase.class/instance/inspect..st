helper
inspect: anObject
	|inspector|
	inspector := anObject inspect.
	World doOneCycle. 
	inspector close 