Class {
	#name : #FlickrResponse,
	#superclass : #Object,
	#instVars : [
		'stat',
		'code',
		'message'
	],
	#pools : [
		'FlickrResponseStatus'
	],
	#category : #'Flickr-Core'
}

{ #category : #accessing }
FlickrResponse class >> neoJsonMapping: mapper [
	mapper for: self do: [ :mapping | 
		mapping mapInstVars: #(stat code message)
		]
]

{ #category : #accessing }
FlickrResponse >> code [

	^ code
]

{ #category : #accessing }
FlickrResponse >> code: anObject [

	code := anObject
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
FlickrResponse >> message: anObject [

	message := anObject
]

{ #category : #accessing }
FlickrResponse >> stat [

	^ stat
]

{ #category : #accessing }
FlickrResponse >> stat: anObject [

	stat := anObject
]
