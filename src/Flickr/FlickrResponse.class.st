Class {
	#name : #FlickrResponse,
	#superclass : #Object,
	#instVars : [
		'stat',
		'code',
		'message',
		'user'
	],
	#pools : [
		'FlickrResponseStatus'
	],
	#category : #'Flickr-Responses'
}

{ #category : #accessing }
FlickrResponse class >> neoJsonMapping: mapper [

	mapper for: self do: [ :mapping | 
		mapping mapInstVars: #( stat code message ).
		(mapping mapInstVar: #user) valueSchema: FlickrUser ].
]

{ #category : #accessing }
FlickrResponse >> code [

	^ code
]

{ #category : #testing }
FlickrResponse >> isError [
	^ stat ~= OK
]

{ #category : #testing }
FlickrResponse >> isSuccess [
	^ stat = OK
]

{ #category : #accessing }
FlickrResponse >> message [

	^ message
]

{ #category : #accessing }
FlickrResponse >> stat [

	^ stat
]
