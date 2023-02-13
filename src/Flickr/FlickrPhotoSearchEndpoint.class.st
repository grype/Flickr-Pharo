Class {
	#name : #FlickrPhotoSearchEndpoint,
	#superclass : #Object,
	#traits : 'TFlickrPagedEndpoint',
	#classTraits : 'TFlickrPagedEndpoint classTrait',
	#instVars : [
		'#text => FlickrQuerySlot',
		'#safeSearch => FlickrQuerySlot',
		'#media => FlickrQuerySlot',
		'#privacyFilter => FlickrQuerySlot'
	],
	#pools : [
		'FlickrMediaConstants',
		'FlickrPrivacyFilterConstants',
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

{ #category : #configuring }
FlickrPhotoSearchEndpoint >> filterCircle [
	privacyFilter := Circle 
]

{ #category : #configuring }
FlickrPhotoSearchEndpoint >> filterFamily [
	privacyFilter := Family
]

{ #category : #configuring }
FlickrPhotoSearchEndpoint >> filterFriends [
	privacyFilter := Friends 
]

{ #category : #configuring }
FlickrPhotoSearchEndpoint >> filterPrivate [
	privacyFilter := Private
]

{ #category : #configuring }
FlickrPhotoSearchEndpoint >> filterPublic [
	privacyFilter := Public
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
