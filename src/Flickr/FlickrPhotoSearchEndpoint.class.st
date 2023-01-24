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

{ #category : #initialization }
FlickrPhotoSearchEndpoint >> initialize [
	
	self class initializeSlots: self.
	super initialize.
]

{ #category : #accessing }
FlickrPhotoSearchEndpoint >> method [
	^ #'flickr.photos.search'
]

{ #category : #enumerating }
FlickrPhotoSearchEndpoint >> next: anInt with: aCursor [

	<get>
	| response result |
	page := aCursor page.
	pageSize := anInt ifNil: [ aCursor pageSize ] ifNotNil: [:val | val min: aCursor pageSize ].
	response := self execute photos.
	result := response elements.
	aCursor total: response total.
	aCursor advance.
	^ result
]

{ #category : #accessing }
FlickrPhotoSearchEndpoint >> text [

	^ text
]

{ #category : #accessing }
FlickrPhotoSearchEndpoint >> text: anObject [

	text := anObject
]
