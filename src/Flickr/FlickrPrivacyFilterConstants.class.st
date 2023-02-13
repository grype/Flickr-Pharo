Class {
	#name : #FlickrPrivacyFilterConstants,
	#superclass : #SharedPool,
	#classVars : [
		'Circle',
		'Family',
		'Friends',
		'Private',
		'Public'
	],
	#category : #'Flickr-Constants'
}

{ #category : #initialization }
FlickrPrivacyFilterConstants class >> initialize [
	Public := 1.
	Friends := 2.
	Family := 3.
	Circle := 4.
	Private := 5
]
