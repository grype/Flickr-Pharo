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
	^ self search
		  text: aString;
		  fetchPage
]
