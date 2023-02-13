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
	media := PhotoMedia
]

{ #category : #configuring }
FlickrPhotoSearchEndpoint >> beForVideosOnly [
	media := VideoMedia
]

{ #category : #configuring }
FlickrPhotoSearchEndpoint >> beModerateSafety [
	safeSearch := ModerateSafeSearch 
]

{ #category : #configuring }
FlickrPhotoSearchEndpoint >> beRestrictedSafety [
	safeSearch := RestrictedSafeSearch 
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
	privacyFilter := CirclePrivacyFilter 
]

{ #category : #configuring }
FlickrPhotoSearchEndpoint >> filterFamily [
	privacyFilter := FamilyPrivacyFilter
]

{ #category : #configuring }
FlickrPhotoSearchEndpoint >> filterFriends [
	privacyFilter := FriendsPrivacyFilter 
]

{ #category : #configuring }
FlickrPhotoSearchEndpoint >> filterPrivate [
	privacyFilter := PrivatePrivacyFilter
]

{ #category : #configuring }
FlickrPhotoSearchEndpoint >> filterPublic [
	privacyFilter := PublicPrivacyFilter
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
