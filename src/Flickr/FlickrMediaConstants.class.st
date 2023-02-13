Class {
	#name : #FlickrMediaConstants,
	#superclass : #SharedPool,
	#classVars : [
		'AllMedia',
		'PhotoMedia',
		'VideoMedia'
	],
	#category : #'Flickr-Constants'
}

{ #category : #initialization }
FlickrMediaConstants class >> initialize [
	AllMedia := 'all'.
	VideoMedia := 'videos'.
	PhotoMedia := 'photos'
]
