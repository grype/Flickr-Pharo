Class {
	#name : #FlickrMediaConstants,
	#superclass : #SharedPool,
	#classVars : [
		'AllMedia',
		'Photos',
		'Videos'
	],
	#category : #'Flickr-Constants'
}

{ #category : #initialization }
FlickrMediaConstants class >> initialize [
	AllMedia := 'all'.
	Videos := 'videos'.
	Photos := 'photos'
]
