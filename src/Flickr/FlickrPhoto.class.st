Class {
	#name : #FlickrPhoto,
	#superclass : #FlickrIdentifiableModel,
	#instVars : [
		'owner',
		'secret',
		'server',
		'farm',
		'title',
		'ispublic',
		'isfriend',
		'isfamily',
		'sizeSpec'
	],
	#category : #'Flickr-Models'
}

{ #category : #accessing }
FlickrPhoto class >> neoJsonMapping: mapper [
	mapper for: self do: [ :mapping | 
		mapping mapAllInstVars.
		]
]

{ #category : #accessing }
FlickrPhoto >> farm [

	^ farm
]

{ #category : #accessing }
FlickrPhoto >> farm: anObject [

	farm := anObject
]

{ #category : #accessing }
FlickrPhoto >> isfamily [

	^ isfamily
]

{ #category : #accessing }
FlickrPhoto >> isfamily: anObject [

	isfamily := anObject
]

{ #category : #accessing }
FlickrPhoto >> isfriend [

	^ isfriend
]

{ #category : #accessing }
FlickrPhoto >> isfriend: anObject [

	isfriend := anObject
]

{ #category : #accessing }
FlickrPhoto >> ispublic [

	^ ispublic
]

{ #category : #accessing }
FlickrPhoto >> ispublic: anObject [

	ispublic := anObject
]

{ #category : #accessing }
FlickrPhoto >> owner [

	^ owner
]

{ #category : #accessing }
FlickrPhoto >> owner: anObject [

	owner := anObject
]

{ #category : #accessing }
FlickrPhoto >> secret [

	^ secret
]

{ #category : #accessing }
FlickrPhoto >> secret: anObject [

	secret := anObject
]

{ #category : #accessing }
FlickrPhoto >> server [

	^ server
]

{ #category : #accessing }
FlickrPhoto >> server: anObject [

	server := anObject
]

{ #category : #'accessing - computed' }
FlickrPhoto >> sizeSpec [

	^ sizeSpec ifNil: [ 
		  self id ifNotNil: [ :anId | 
			  ThisFlickr value ifNotNil: [ :flickr | 
				  sizeSpec := (flickr photoWithId: anId) sizes ].
			  sizeSpec ] ]
]

{ #category : #accessing }
FlickrPhoto >> title [

	^ title
]

{ #category : #accessing }
FlickrPhoto >> title: anObject [

	title := anObject
]
