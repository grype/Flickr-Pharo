Class {
	#name : #FlickrPhotoSearchEndpoint,
	#superclass : #Object,
	#traits : 'TFlickrEndpoint',
	#classTraits : 'TFlickrEndpoint classTrait',
	#instVars : [
		'#text => FlickrQuerySlot'
	],
	#category : #'Flickr-Endpoints'
}

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
