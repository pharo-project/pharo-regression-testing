running
setUp
	self deleteTemporaryImage.
	self tempStdOutFile ensureDelete.
	self tempStdErrFile ensureDelete.
	self backupNewTemporaryImage.