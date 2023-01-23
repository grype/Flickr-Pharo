Class {
	#name : #FlickrUser,
	#superclass : #FlickrIdentifiableModel,
	#instVars : [
		'nsid',
		'username'
	],
	#category : #'Flickr-Models'
}

{ #category : #accessing }
FlickrUser class >> neoJsonMapping: mapper [

	super neoJsonMapping: mapper.
	mapper for: self do: [ :mapping | 
		mapping mapInstVars: #( nsid ).
		(mapping mapInstVar: #username) valueSchema: #UsernameContent ].

	mapper for: #UsernameContent customDo: [ :mapping | 
		mapping decoder: [ :val | 
			val isDictionary
				ifTrue: [ val at: #_content. ]
				ifFalse: [ val ] ].
		mapping encoder: [ :val | val ] ]
]
