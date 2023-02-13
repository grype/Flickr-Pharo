Class {
	#name : #FlickrPhotoSearchEndpoint,
	#superclass : #Object,
	#traits : 'TFlickrPagedEndpoint',
	#classTraits : 'TFlickrPagedEndpoint classTrait',
	#instVars : [
		'#text => FlickrQuerySlot',
		'#safeSearch => FlickrQuerySlot',
		'#media => FlickrQuerySlot'
	],
	#pools : [
		'FlickrMediaConstants',
		'FlickrSafeSearchConstants'
	],
	#category : #'Flickr-Endpoints'
}

{ #category : #configuring }
FlickrPhotoSearchEndpoint >> beForAllMedia [
	media := AllMedia
]

{ #category : #configuring }
FlickrPhotoSearchEndpoint >> beForPhotosOnly [
	media := Photos
]

{ #category : #configuring }
FlickrPhotoSearchEndpoint >> beForVideosOnly [
	media := Videos
]

{ #category : #configuring }
FlickrPhotoSearchEndpoint >> beModerateSafety [
	safeSearch := ModerateSafetySearch 
]

{ #category : #configuring }
FlickrPhotoSearchEndpoint >> beRestrictedSafety [
	safeSearch := RestrictedSafetySearch 
]

{ #category : #configuring }
FlickrPhotoSearchEndpoint >> beSafe [
	safeSearch := SafeSearch
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
