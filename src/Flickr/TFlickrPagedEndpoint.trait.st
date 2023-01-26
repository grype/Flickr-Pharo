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

{ #category : #enumerating }
TFlickrPagedEndpoint >> fetchPage [

	^ self notImplemented
]

{ #category : #enumerating }
TFlickrPagedEndpoint >> next: anInt with: aCursor [

	| response result |
	page := aCursor page.
	pageSize := anInt ifNil: [ aCursor pageSize ] ifNotNil: [:val | val min: aCursor pageSize ].
	response := self fetchPage.
	result := response elements.
	aCursor total: response total.
	aCursor advance.
	^ result
]

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
