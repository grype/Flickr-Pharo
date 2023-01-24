Trait {
	#name : #TFlickrPagedEndpoint,
	#instVars : [
		'#page => FlickrQuerySlot',
		'#pageSize => FlickrQuerySlot'
	],
	#traits : 'TFlickrEndpoint + TWSEnumeration',
	#classTraits : 'TFlickrEndpoint classTrait + TWSEnumeration classTrait',
	#category : #'Flickr-Endpoints'
}

{ #category : #accessing }
TFlickrPagedEndpoint >> page [

	^ page
]

{ #category : #accessing }
TFlickrPagedEndpoint >> page: anObject [

	page := anObject
]

{ #category : #accessing }
TFlickrPagedEndpoint >> pageSize [

	^ pageSize
]

{ #category : #accessing }
TFlickrPagedEndpoint >> pageSize: anObject [

	pageSize := anObject
]
