running
deleteTestImage
	(self testImageName asFileReference, Smalltalk imageSuffix) ensureDeleted.
	(self testImageName asFileReference, Smalltalk changesSuffix) ensureDeleted.	