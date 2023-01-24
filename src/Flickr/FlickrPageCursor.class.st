Class {
	#name : #FlickrPageCursor,
	#superclass : #Object,
	#classTraits : 'TFlickrPage classTrait',
	#instVars : [
		'page',
		'pageSize',
		'total'
	],
	#category : #'Flickr-Models'
}

{ #category : #advancing }
FlickrPageCursor >> advance [

	page := page + 1
]

{ #category : #testing }
FlickrPageCursor >> hasMore [

	^ total isNil or: [ page - 1 * pageSize < total ]
]

{ #category : #initialization }
FlickrPageCursor >> initialize [

	super initialize.
	page := 1.
	pageSize := 100
]

{ #category : #accessing }
FlickrPageCursor >> page [

	^ page
]

{ #category : #accessing }
FlickrPageCursor >> page: anObject [

	page := anObject
]

{ #category : #accessing }
FlickrPageCursor >> pageSize [

	^ pageSize
]

{ #category : #accessing }
FlickrPageCursor >> pageSize: anObject [

	pageSize := anObject
]

{ #category : #accessing }
FlickrPageCursor >> total [

	^ total
]

{ #category : #accessing }
FlickrPageCursor >> total: anObject [

	total := anObject
]
