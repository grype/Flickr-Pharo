Trait {
	#name : #TFlickrEndpoint,
	#traits : 'TWSEndpoint',
	#classTraits : 'TWSEndpoint classTrait',
	#category : #'Flickr-Endpoints'
}

{ #category : #configuring }
TFlickrEndpoint >> configureOn: http [

	self method ifNotNil: [ :val | http queryAt: #method put: val ].
	self class slots
		select: #isFlickrQuery
		thenDo: [ :aSlot | http queryAt: aSlot queryName put: (aSlot read: self) ]
]

{ #category : #accessing }
TFlickrEndpoint >> method [
	^ nil
]
