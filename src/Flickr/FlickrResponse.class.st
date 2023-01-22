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
	#category : #'Flickr-Responses'
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
