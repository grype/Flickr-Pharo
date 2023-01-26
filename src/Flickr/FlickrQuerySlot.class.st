Class {
	#name : #FlickrQuerySlot,
	#superclass : #InstanceVariableSlot,
	#instVars : [
		'queryName'
	],
	#category : #'Flickr-Core'
}

{ #category : #initialization }
FlickrQuerySlot >> initialize [
	super initialize.
	queryName := self name asSnakeCase 
]

{ #category : #accessing }
FlickrQuerySlot >> isFlickrQuery [
	^ true
]

{ #category : #accessing }
FlickrQuerySlot >> queryName [
	^ queryName ifNil: [ self name asSnakeCase ]
]

{ #category : #accessing }
FlickrQuerySlot >> queryName: anObject [

	^ queryName := anObject
]
