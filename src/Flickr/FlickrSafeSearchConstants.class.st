Class {
	#name : #FlickrSafeSearchConstants,
	#superclass : #SharedPool,
	#classVars : [
		'ModerateSafeSearch',
		'RestrictedSafeSearch',
		'SafeSearch'
	],
	#category : #'Flickr-Constants'
}

{ #category : #initialization }
FlickrSafeSearchConstants class >> initialize [
	SafeSearch := 1.
	ModerateSafeSearch := 2.
	RestrictedSafeSearch := 3
]
