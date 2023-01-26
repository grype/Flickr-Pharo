Class {
	#name : #FlickrQuerySlot,
	#superclass : #InstanceVariableSlot,
	#instVars : [
		'queryName'
	],
	#category : #'Flickr-Core'
}

{ #category : #accessing }
FlickrQuerySlot >> isFlickrQuery [
	^ true
]

{ #category : #accessing }
FlickrQuerySlot >> queryName [

	^ self name asSnakeCase
]
