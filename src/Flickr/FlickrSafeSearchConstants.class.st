Class {
	#name : #FlickrSafeSearchConstants,
	#superclass : #SharedPool,
	#classVars : [
		'ModerateSafetySearch',
		'RestrictedSafetySearch',
		'SafeSearch'
	],
	#category : #Flickr
}

{ #category : #initialization }
FlickrSafeSearchConstants class >> initialize [
	SafeSearch := 1.
	ModerateSafetySearch := 2.
	RestrictedSafetySearch := 3
]
