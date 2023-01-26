Class {
	#name : #FlickrInterestingnessEndpoint,
	#superclass : #Object,
	#traits : 'TFlickrPagedEndpoint',
	#classTraits : 'TFlickrPagedEndpoint classTrait',
	#instVars : [
		'#date => FlickrQuerySlot',
		'#extras => FlickrQuerySlot'
	],
	#category : #'Flickr-Endpoints'
}

{ #category : #accessing }
FlickrInterestingnessEndpoint >> cursor [
	^ FlickrPageCursor new
]

{ #category : #enumerating }
FlickrInterestingnessEndpoint >> fetchPage [
	<get>
	^ self execute photos
]

{ #category : #accessing }
FlickrInterestingnessEndpoint >> method [
	^ 'flickr.interestingness.getList'
]
