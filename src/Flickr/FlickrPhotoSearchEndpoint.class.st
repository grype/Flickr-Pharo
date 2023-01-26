Class {
	#name : #FlickrPhotoSearchEndpoint,
	#superclass : #Object,
	#traits : 'TFlickrPagedEndpoint',
	#classTraits : 'TFlickrPagedEndpoint classTrait',
	#instVars : [
		'#text => FlickrQuerySlot'
	],
	#category : #'Flickr-Endpoints'
}

{ #category : #accessing }
FlickrPhotoSearchEndpoint >> cursor [
	^ FlickrPageCursor new
]

{ #category : #executing }
FlickrPhotoSearchEndpoint >> execute: anExecBlock [
	<get>
	^ wsClient execute: self with: anExecBlock 
]

{ #category : #enumerating }
FlickrPhotoSearchEndpoint >> fetchPage [
	<get>
	^ self execute photos
]

{ #category : #initialization }
FlickrPhotoSearchEndpoint >> initialize [
	
	self class initializeSlots: self.
	super initialize.
]

{ #category : #accessing }
FlickrPhotoSearchEndpoint >> method [
	^ #'flickr.photos.search'
]

{ #category : #accessing }
FlickrPhotoSearchEndpoint >> text [

	^ text
]

{ #category : #accessing }
FlickrPhotoSearchEndpoint >> text: anObject [

	text := anObject
]
