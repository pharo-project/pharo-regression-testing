tests
testGoferDownloadsManyFiles
	| go |
	go := Gofer new renggli: 'petit'.
	(go allResolved select: [ :each | each name beginsWith: 'Configuration' ])
	    do: [:each |
	        self crLog: each packageName.
	        go package: each packageName.
	        Transcript show: each printString ; cr.
	        go fetch.].