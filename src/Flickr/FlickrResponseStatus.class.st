Class {
	#name : #FlickrResponseStatus,
	#superclass : #SharedPool,
	#classVars : [
		'Fail',
		'OK'
	],
	#category : #'Flickr-Core'
}

{ #category : #initialization }
FlickrResponseStatus class >> initialize [

	OK := 'ok'.
	Fail := 'fail'
]
