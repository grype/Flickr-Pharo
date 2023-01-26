Class {
	#name : #FlickrPhotoEndpoint,
	#superclass : #Object,
	#traits : 'TFlickrEndpoint',
	#classTraits : 'TFlickrEndpoint classTrait',
	#instVars : [
		'#photoId => FlickrQuerySlot'
	],
	#category : #'Flickr-Endpoints'
}

{ #category : #accessing }
FlickrPhotoEndpoint >> method [
	^ nil
]

{ #category : #accessing }
FlickrPhotoEndpoint >> photoId [

	^ photoId
]

{ #category : #accessing }
FlickrPhotoEndpoint >> photoId: anObject [

	photoId := anObject
]

{ #category : #accessing }
FlickrPhotoEndpoint >> sizes [

	<queryAt: #method put: 'flickr.photos.getSizes'>
	<get>
	^ self execute sizes
]
