running
runCase
	^ ImageWorker do: [ FileStream stderr nextPutAll: 'running case'; lf. super runCase ]