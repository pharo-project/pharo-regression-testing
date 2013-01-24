tests
testSaveAs
	| newImageFile newChangesFile |
	
	self runCommandLine: 'saveAs _test.image'.
	
	newImageFile := '_test.image' asFileReference exists.
	self assert: newImageFile exists.
	self assert: newImageFile isFile.
	
	newChangesFile := '_test.changes' asFileReference exists.
	self assert: newChangesFile exists.
	self assert: newChangesFile isFile.
	
	newImageFile ensureDeleted.
	newChangesFile ensureDeleted.