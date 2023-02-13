Class {
	#name : #FlickrPhotoSizeSpec,
	#superclass : #FlickrModel,
	#instVars : [
		'sizes',
		'canBlog',
		'canPrint',
		'canDownload'
	],
	#category : #'Flickr-Models'
}

{ #category : #accessing }
FlickrPhotoSizeSpec class >> neoJsonMapping: mapper [

	mapper for: self do: [ :mapping | 
		mapping mapInstVar: #canBlog to: #canblog.
		mapping mapInstVar: #canPrint to: #canprint.
		mapping mapInstVar: #canDownload to: #candownload.
		(mapping mapInstVar: #sizes to: #size) valueSchema: #ListOfSizes ].
	mapper
		for: #ListOfSizes
		customDo: [ :mapping | mapping listOfElementSchema: FlickrPhotoSize ]
]

{ #category : #accessing }
FlickrPhotoSizeSpec >> canBlog [

	^ canBlog
]

{ #category : #accessing }
FlickrPhotoSizeSpec >> canBlog: anObject [

	canBlog := anObject
]

{ #category : #accessing }
FlickrPhotoSizeSpec >> canDownload [

	^ canDownload
]

{ #category : #accessing }
FlickrPhotoSizeSpec >> canDownload: anObject [

	canDownload := anObject
]

{ #category : #accessing }
FlickrPhotoSizeSpec >> canPrint [

	^ canPrint
]

{ #category : #accessing }
FlickrPhotoSizeSpec >> canPrint: anObject [

	canPrint := anObject
]

{ #category : #accessing }
FlickrPhotoSizeSpec >> largestSize [
	sizes ifEmpty: [ ^ nil ].
	sizes size > 1 ifFalse: [ ^ sizes first ].
	^ self sortedSizes last
]

{ #category : #accessing }
FlickrPhotoSizeSpec >> medianSize [
	sizes ifEmpty: [ ^ nil ].
	sizes size > 2 ifFalse: [ ^ sizes first ].
	^ self sortedSizes at: (sizes size / 2) asInteger
]

{ #category : #accessing }
FlickrPhotoSizeSpec >> sizes [

	^ sizes
]

{ #category : #accessing }
FlickrPhotoSizeSpec >> sizes: anObject [

	sizes := anObject
]

{ #category : #accessing }
FlickrPhotoSizeSpec >> smallestSize [
	sizes ifEmpty: [ ^ nil ].
	sizes size > 1 ifFalse: [ ^ sizes first ].
	^ self sortedSizes first
]

{ #category : #accessing }
FlickrPhotoSizeSpec >> smallestSizeExceeding: aPoint [
	| matches |

	matches := (sizes select: [ :aSize | 
		            aSize width asNumber > aPoint x and: [ 
			            aSize height asNumber > aPoint y ] ]) sorted: [ :a :b | 
		           a width * a height < (b width * b height) ].
	^ matches
		  ifEmpty: [ nil ]
		  ifNotEmpty: [ matches first ]
]

{ #category : #accessing }
FlickrPhotoSizeSpec >> sortedSizes [
	^ sizes sorted: [ :a :b | 
		  a width asNumber * a height asNumber
		  < (b width asNumber * b height asNumber) ]
]
