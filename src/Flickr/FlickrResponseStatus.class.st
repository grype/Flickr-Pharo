Class {
	#name : #FlickrResponseStatus,
	#superclass : #SharedPool,
	#classVars : [
		'Fail',
		'OK'
	],
	#category : #'Flickr-Responses'
}

{ #category : #initialization }
FlickrResponseStatus class >> initialize [

	OK := 'ok'.
	Fail := 'fail'
]
