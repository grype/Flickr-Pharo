Trait {
	#name : #TFlickrPage,
	#instVars : [
		'page',
		'pages',
		'pageSize',
		'total'
	],
	#category : #'Flickr-Models'
}

{ #category : #accessing }
TFlickrPage classSide >> neoJsonMapping: mapper [

	mapper for: self do: [ :mapping | 
		mapping mapInstVars: #( page pages total ).
		mapping mapInstVar: #pageSize to: #perpage ]
]

{ #category : #accessing }
TFlickrPage >> elements [
	^ self notImplemented 
]

{ #category : #accessing }
TFlickrPage >> page [

	^ page
]

{ #category : #accessing }
TFlickrPage >> page: anObject [

	page := anObject
]

{ #category : #accessing }
TFlickrPage >> pageSize [

	^ pageSize
]

{ #category : #accessing }
TFlickrPage >> pageSize: anObject [

	pageSize := anObject
]

{ #category : #accessing }
TFlickrPage >> pages [

	^ pages
]

{ #category : #accessing }
TFlickrPage >> pages: anObject [

	pages := anObject
]

{ #category : #accessing }
TFlickrPage >> total [

	^ total
]

{ #category : #accessing }
TFlickrPage >> total: anObject [

	total := anObject
]
