accessing
tempStdErrFile
	^ (self filePrefix, '_stderr') asFileReference  , 'txt'