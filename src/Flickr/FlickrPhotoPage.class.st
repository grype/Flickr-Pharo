Class {
	#name : #FlickrPhotoPage,
	#superclass : #FlickrModel,
	#traits : 'TFlickrPage',
	#classTraits : 'TFlickrPage classTrait',
	#instVars : [
		'photos'
	],
	#category : #'Flickr-Models'
}

{ #category : #accessing }
FlickrPhotoPage class >> neoJsonMapping: mapper [

	mapper for: self do: [ :mapping | 
		mapping mapInstVars: #( page pages total ).
		mapping mapInstVar: #pageSize to: #perpage.
		(mapping mapInstVar: #photos to: #photo) valueSchema: #ListOfPhotos ].

	mapper
		for: #ListOfPhotos
		customDo: [ :mapping | mapping listOfElementSchema: FlickrPhoto ]
]

{ #category : #accessing }
FlickrPhotoPage >> elements [

	^ photos
]

{ #category : #accessing }
FlickrPhotoPage >> photos [

	^ photos
]
