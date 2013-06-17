running
deleteTemporaryFiles
	self deleteTemporaryImage.
	self tempBashFile ensureDelete.
	self tempStdErrFile ensureDelete.
	self tempStdOutFile ensureDelete.