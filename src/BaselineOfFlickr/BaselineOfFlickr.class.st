Class {
	#name : #BaselineOfFlickr,
	#superclass : #BaselineOf,
	#category : #BaselineOfFlickr
}

{ #category : #baseline }
BaselineOfFlickr >> baseline: spec [
	<baseline>
	spec
		for: #common
		do: [ 
			self
				declareEthelOn: spec.

			spec
				package: 'Flickr' with: [ spec requires: #('Ethel') ].
 ]
]

{ #category : #'external projects' }
BaselineOfFlickr >> declareEthelOn: spec [
	spec
		baseline: 'Ethel'
		with: [ spec repository: 'github://grype/Ethel' ]
]
