version
version10: spec
	<version: '1.0' imports: #('1-baseline')>
	
	spec for: #common do: [
		spec blessing: #development.
		spec description: 'Initial release'.
		spec author: 'CamilloBruni'.
		spec timestamp: '1/25/2013 11:27' ].
	
	spec for: #common do: [
		spec
		  	package: 'Regression-Testing' with: 'Regression-Testing-CamilloBruni.13' ].