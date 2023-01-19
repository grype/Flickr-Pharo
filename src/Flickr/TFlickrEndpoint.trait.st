Trait {
	#name : #TFlickrEndpoint,
	#category : #'Flickr-Endpoints'
}

{ #category : #configuring }
TFlickrEndpoint >> configureOn: http [

	http queryAt: #method put: self method.
	self class slots
		select: [ :aSlot | aSlot isKindOf: FlickrQuerySlot ]
		thenDo: [ :aSlot | http queryAt: aSlot queryName put: aSlot value ]
]

{ #category : #accessing }
TFlickrEndpoint >> method [
	^ self notImplemented 
]
