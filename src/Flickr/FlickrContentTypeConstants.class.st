Class {
	#name : #FlickrContentTypeConstants,
	#superclass : #SharedPool,
	#classVars : [
		'AllContentType',
		'OtherOnlyContentType',
		'PhotosAndOtherContentType',
		'PhotosAndScreenshotsContentType',
		'PhotosOnlyContentType',
		'ScreenshotsAndOtherContentType',
		'ScreenshotsOnlyContentType'
	],
	#category : #'Flickr-Constants'
}

{ #category : #initialization }
FlickrContentTypeConstants class >> initialize [
	PhotosOnlyContentType := 1.
	ScreenshotsOnlyContentType := 2.
	OtherOnlyContentType := 3.
	PhotosAndScreenshotsContentType := 4.
	ScreenshotsAndOtherContentType := 5.
	PhotosAndOtherContentType := 6.
	AllContentType := 7
]
