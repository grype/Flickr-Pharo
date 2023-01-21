Class {
	#name : #FlickrPhotosEndpoint,
	#superclass : #Object,
	#traits : 'TFlickrEndpoint',
	#classTraits : 'TFlickrEndpoint classTrait',
	#category : #'Flickr-Endpoints'
}

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
