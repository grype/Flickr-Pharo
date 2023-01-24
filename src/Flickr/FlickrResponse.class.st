Class {
	#name : #FlickrResponse,
	#superclass : #Object,
	#instVars : [
		'stat',
		'code',
		'message',
		'user',
		'photos',
		'sizes'
	],
	#pools : [
		'FlickrResponseStatus'
	],
	#category : #'Flickr-Responses'
}

{ #category : #accessing }
FlickrResponse class >> neoJsonMapping: mapper [

	mapper for: self do: [ :mapping | 
		mapping mapInstVars: #( stat code message photos ).
		(mapping mapInstVar: #user) valueSchema: FlickrUser.
		(mapping mapInstVar: #photos) valueSchema: FlickrPhotoPage.
		(mapping mapInstVar: #sizes) valueSchema: FlickrPhotoSizeSpec ]
]

{ #category : #accessing }
FlickrResponse >> code [

	^ code
]

{ #category : #testing }
FlickrResponse >> isError [
	^ stat ~= OK
]

{ #category : #testing }
FlickrResponse >> isSuccess [
	^ stat = OK
]

{ #category : #accessing }
FlickrResponse >> message [

	^ message
]

{ #category : #accessing }
FlickrResponse >> photos [

	^ photos
]

{ #category : #accessing }
FlickrResponse >> sizes [

	^ sizes
]

{ #category : #accessing }
FlickrResponse >> stat [

	^ stat
]

{ #category : #accessing }
FlickrResponse >> user [

	^ user
]
