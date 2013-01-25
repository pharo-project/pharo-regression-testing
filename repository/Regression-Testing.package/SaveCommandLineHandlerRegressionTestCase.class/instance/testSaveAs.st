tests
testSaveAs
	| newImageFile newChangesFile |
	
	
	self runCommandLine: {'save'. '_test' }.
	
	newImageFile := '_test.image' asFileReference.
	self assert: newImageFile exists.
	self assert: newImageFile isFile.
	
	newChangesFile := '_test.changes' asFileReference.
	self assert: newChangesFile exists.
	self assert: newChangesFile isFile.
	
	newImageFile ensureDeleted.
	newChangesFile ensureDeleted.