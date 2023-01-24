Class {
	#name : #FlickrPhotosEndpoint,
	#superclass : #Object,
	#traits : 'TFlickrEndpoint',
	#classTraits : 'TFlickrEndpoint classTrait',
	#category : #'Flickr-Endpoints'
}

{ #category : #accessing }
FlickrPhotosEndpoint >> method [
	^ 'flickr.photos'
]

{ #category : #accessing }
FlickrPhotosEndpoint >> search [
	^ self / FlickrPhotoSearchEndpoint 
]

{ #category : #accessing }
FlickrPhotosEndpoint >> search: aString [

	<get>
	^ self search
		  text: aString;
		  execute
]

{ #category : #'as yet unclassified' }
FlickrPhotosEndpoint >> sizesForPhotoWithId: aPhotoId [
	<get>
	<queryAt: #method put: 'flickr.photos.getSizes'>
	<queryAt: #photo_id put: '{aPhotoId}'>
	^ self execute
]
