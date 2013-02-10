running
deleteTemporaryFiles
	self deleteTemporaryImage.
	self tempBashFile delete.
	self tempStdErrFile delete.
	self tempStdOutFile delete.