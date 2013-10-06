helper
inspect: anObject
	|inspector|
	inspector := anObject inspector.
	World doOneCycle. 
	inspector close