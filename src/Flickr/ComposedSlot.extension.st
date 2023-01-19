Extension { #name : #ComposedSlot }

{ #category : #'*Flickr' }
ComposedSlot >> isFlickrQuery [
	^ decorators detect: [ :aSlot | aSlot isFlickrQuery ] ifFound: [ true ] ifNone: [ false ]
]
