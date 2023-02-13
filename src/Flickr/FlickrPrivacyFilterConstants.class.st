Class {
	#name : #FlickrPrivacyFilterConstants,
	#superclass : #SharedPool,
	#classVars : [
		'CirclePrivacyFilter',
		'FamilyPrivacyFilter',
		'FriendsPrivacyFilter',
		'PrivatePrivacyFilter',
		'PublicPrivacyFilter'
	],
	#category : #'Flickr-Constants'
}

{ #category : #initialization }
FlickrPrivacyFilterConstants class >> initialize [
	PublicPrivacyFilter := 1.
	FriendsPrivacyFilter := 2.
	FamilyPrivacyFilter := 3.
	CirclePrivacyFilter := 4.
	PrivatePrivacyFilter := 5
]
