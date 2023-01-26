Class {
	#name : #FlickrResponseError,
	#superclass : #Error,
	#instVars : [
		'response'
	],
	#category : #'Flickr-Core'
}

{ #category : #signalling }
FlickrResponseError class >> signal: aResponse [

	^ self basicNew
		  initializeWithResponse: aResponse;
		  signal
]

{ #category : #initialization }
FlickrResponseError >> initializeWithResponse: aResponse [
	self initialize.
	response := aResponse.
	messageText := '{1}: {2}' format: {aResponse code asString. aResponse message}
]
