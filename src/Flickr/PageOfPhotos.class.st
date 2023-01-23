Class {
	#name : #PageOfPhotos,
	#superclass : #FlickrModel,
	#traits : 'TFlickrPage',
	#classTraits : 'TFlickrPage classTrait',
	#instVars : [
		'photos'
	],
	#category : #'Flickr-Models'
}

{ #category : #accessing }
PageOfPhotos class >> neoJsonMapping: mapper [

	mapper for: self do: [ :mapping | 
		mapping mapInstVars: #( page pages total ).
		mapping mapInstVar: #pageSize to: #perpage.
		(mapping mapInstVar: #photos) valueSchema: #PageOfPhotos ].

	mapper
		for: #PageOfPhotos
		customDo: [ :mapping | mapping listOfElementSchema: #FlickrPhoto ]
]

{ #category : #accessing }
PageOfPhotos >> elements [

	^ photos
]

{ #category : #accessing }
PageOfPhotos >> photos [

	^ photos
]
