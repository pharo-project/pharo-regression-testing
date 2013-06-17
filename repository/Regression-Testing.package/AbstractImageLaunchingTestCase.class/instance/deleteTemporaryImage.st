running
deleteTemporaryImage
	(self temporaryImageName asFileReference, Smalltalk imageSuffix) ensureDelete.
	(self temporaryImageName asFileReference, Smalltalk changesSuffix) ensureDelete.	