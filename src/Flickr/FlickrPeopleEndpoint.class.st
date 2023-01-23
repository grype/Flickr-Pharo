Class {
	#name : #FlickrPeopleEndpoint,
	#superclass : #Object,
	#traits : 'TFlickrEndpoint',
	#classTraits : 'TFlickrEndpoint classTrait',
	#category : #'Flickr-Endpoints'
}

{ #category : #accessing }
FlickrPeopleEndpoint >> findByUsername: aUsername [

	<get>
	<queryAt: #method put: 'flickr.people.findByUsername'>
	<queryAt: #username put: '{aUsername}'>
	^ self execute
]

{ #category : #accessing }
FlickrPeopleEndpoint >> method [
	^ 'flickr.people'
]
