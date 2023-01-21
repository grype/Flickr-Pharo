Class {
	#name : #FlickrEndpointSlot,
	#superclass : #ComputedSlot,
	#instVars : [
		'endpointClass'
	],
	#category : #'Flickr-Core'
}

{ #category : #'instance creation' }
FlickrEndpointSlot class >> for: anEndpointClass [

	^ self new
		  endpointClass: anEndpointClass;
		  yourself
]

{ #category : #accessing }
FlickrEndpointSlot >> endpointClass [

	^ endpointClass
]

{ #category : #accessing }
FlickrEndpointSlot >> endpointClass: anObject [

	endpointClass := anObject
]

{ #category : #accessing }
FlickrEndpointSlot >> initialize: anObject [

	super initialize: anObject.
	block := [ :ep | ep / endpointClass ]
]

{ #category : #accessing }
FlickrEndpointSlot >> isDecorator [
	^ true
]
