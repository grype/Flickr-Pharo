Class {
	#name : #FlickrQuerySlot,
	#superclass : #ComposableSlot,
	#instVars : [
		'queryName'
	],
	#category : #'Flickr-Core'
}

{ #category : #'instance creation' }
FlickrQuerySlot class >> named: aQueryName [

	^ self basicNew initializeWithQueryName: aQueryName
]

{ #category : #'meta-object-protocol' }
FlickrQuerySlot >> initialize: anObject [
	super initialize: anObject.
]

{ #category : #initialization }
FlickrQuerySlot >> initializeWithQueryName: aString [

	self initialize.
	aString ifNotNil: [ queryName := aString ]
]

{ #category : #accessing }
FlickrQuerySlot >> isFlickrQuery [
	<exposeToComposition>
	^ true
]

{ #category : #accessing }
FlickrQuerySlot >> queryName [
	<exposeToComposition>
	^ queryName ifNil: [ self name asSnakeCase ]
]

{ #category : #'meta-object-protocol' }
FlickrQuerySlot >> wantsInitalization [
	^ true
]
