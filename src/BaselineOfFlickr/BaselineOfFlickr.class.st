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

		spec group: 'default' with: #( core tools ).
		spec group: 'core' with: #( 'Flickr' ).
		spec group: 'tools' with: #( 'Ethel-Tools' ) ]
]

{ #category : #'external projects' }
BaselineOfFlickr >> declareEthelOn: spec [

	spec baseline: 'Ethel' with: [ 
		spec
			loads: #( core );
			repository: 'github://grype/Ethel:develop' ].
	spec
		project: 'Ethel-Tools'
		copyFrom: 'Ethel'
		with: [ spec loads: #( tools ) ]
]
