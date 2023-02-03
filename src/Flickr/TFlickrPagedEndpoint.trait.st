Trait {
	#name : #TFlickrPagedEndpoint,
	#instVars : [
		'#page => FlickrQuerySlot',
		'#perPage => FlickrQuerySlot'
	],
	#traits : 'TFlickrEndpoint + TWSEnumeration',
	#classTraits : 'TFlickrEndpoint classTrait + TWSEnumeration classTrait',
	#category : #'Flickr-Endpoints'
}

{ #category : #accessing }
TFlickrPagedEndpoint >> cursor [
	| cursor |

	cursor := FlickrPageCursor new.
	perPage ifNotNil: [ :val | cursor pageSize: val ].
	page ifNotNil: [ :val | cursor page: page ].
	^ cursor
]

{ #category : #enumerating }
TFlickrPagedEndpoint >> fetchPage [

	^ self notImplemented
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

	^ perPage
]

{ #category : #accessing }
TFlickrPagedEndpoint >> pageSize: anObject [

	perPage := anObject
]
