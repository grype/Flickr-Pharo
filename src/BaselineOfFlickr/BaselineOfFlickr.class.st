Class {
	#name : #BaselineOfFlickr,
	#superclass : #BaselineOf,
	#category : #BaselineOfFlickr
}

{ #category : #baselines }
BaselineOfFlickr >> baseline: spec [
	<baseline>
	spec for: #common do: [ 
		self declareEthelOn: spec.
		spec package: 'Flickr' with: [ spec requires: #( 'Ethel' ) ].
		spec group: 'default' with: #( Flickr ) ]
]

{ #category : #'external projects' }
BaselineOfFlickr >> declareEthelOn: spec [
	spec baseline: 'Ethel' with: [ 
		spec
			repository: 'github://grype/Ethel:develop';
			loads: #( core ) ]
]
