running
setUp
	self deleteTemporaryImage.
	self tempStdOutFile ensureDeleted.
	self tempStdErrFile ensureDeleted.
	self backupNewTemporaryImage.