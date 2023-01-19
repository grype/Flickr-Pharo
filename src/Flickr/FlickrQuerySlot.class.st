Class {
	#name : #FlickrQuerySlot,
	#superclass : #InstanceVariableSlot,
	#instVars : [
		'queryName'
	],
	#category : #'Flickr-Core'
}

{ #category : #initialization }
FlickrQuerySlot >> initializeWithQueryName: aString [

	self initialize.
	queryName := aString ifNil: [ self name asSnakeCase ]
]

{ #category : #accessing }
FlickrQuerySlot >> queryName [

	^ queryName
]
