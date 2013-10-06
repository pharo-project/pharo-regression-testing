accessing
tempStdOutFile
	^ (self filePrefix, '_stdout') asFileReference  , 'txt'