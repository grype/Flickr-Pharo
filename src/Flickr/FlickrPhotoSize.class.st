Class {
	#name : #FlickrPhotoSize,
	#superclass : #FlickrIdentifiableModel,
	#instVars : [
		'label',
		'width',
		'height',
		'source',
		'url',
		'media'
	],
	#category : #'Flickr-Models'
}

{ #category : #accessing }
FlickrPhotoSize class >> neoJsonMapping: mapper [

	mapper for: self do: [ :mapping | mapping mapAllInstVars ]
]

{ #category : #accessing }
FlickrPhotoSize >> form [
	^ Form fromBinaryStream: source asUrl retrieveContents readStream 
]

{ #category : #accessing }
FlickrPhotoSize >> height [

	^ height
]

{ #category : #accessing }
FlickrPhotoSize >> height: anObject [

	height := anObject
]

{ #category : #accessing }
FlickrPhotoSize >> label [

	^ label
]

{ #category : #accessing }
FlickrPhotoSize >> label: anObject [

	label := anObject
]

{ #category : #accessing }
FlickrPhotoSize >> media [

	^ media
]

{ #category : #accessing }
FlickrPhotoSize >> media: anObject [

	media := anObject
]

{ #category : #accessing }
FlickrPhotoSize >> source [

	^ source
]

{ #category : #accessing }
FlickrPhotoSize >> source: anObject [

	source := anObject
]

{ #category : #accessing }
FlickrPhotoSize >> url [

	^ url
]

{ #category : #accessing }
FlickrPhotoSize >> url: anObject [

	url := anObject
]

{ #category : #accessing }
FlickrPhotoSize >> width [

	^ width
]

{ #category : #accessing }
FlickrPhotoSize >> width: anObject [

	width := anObject
]
