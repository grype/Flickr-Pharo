Class {
	#name : #FlickrQuerySlot,
	#superclass : #InstanceVariableSlot,
	#instVars : [
		'queryName'
	],
	#category : #'Flickr-Core'
}

{ #category : #'instance creation' }
FlickrQuerySlot class >> named: aQueryName [

	^ self basicNew initializeWithQueryName: aQueryName
]

{ #category : #initialization }
FlickrQuerySlot >> initializeWithQueryName: aString [

	self initialize.
	aString ifNotNil: [ queryName := aString ]
]

{ #category : #accessing }
FlickrQuerySlot >> isFlickrQuery [
	^ true
]

{ #category : #accessing }
FlickrQuerySlot >> queryName [
	^ queryName ifNil: [ self name asSnakeCase ]
]
