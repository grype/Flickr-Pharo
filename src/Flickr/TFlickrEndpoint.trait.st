Trait {
	#name : #TFlickrEndpoint,
	#traits : 'TWSEndpoint',
	#classTraits : 'TWSEndpoint classTrait',
	#category : #'Flickr-Endpoints'
}

{ #category : #configuring }
TFlickrEndpoint >> configureOn: http [
	self method ifNotNil: [ :val | http queryAt: #method put: val ].
	self class slots select: #isFlickrQuery thenDo: [ :aSlot | 
		(aSlot read: self) ifNotNil: [ :val | 
			http queryAt: aSlot queryName put: val ] ]
]

{ #category : #accessing }
TFlickrEndpoint >> method [
	^ nil
]
