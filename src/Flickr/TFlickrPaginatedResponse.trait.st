Trait {
	#name : #TFlickrPaginatedResponse,
	#instVars : [
		'page',
		'pages',
		'pageSize',
		'total'
	],
	#category : #'Flickr-Responses'
}

{ #category : #accessing }
TFlickrPaginatedResponse classSide >> neoJsonMapping: mapper [

	mapper for: self do: [ :mapping | 
		mapping mapInstVars: #( page pages total ).
		mapping mapInstVar: #pageSize to: #perpage ]
]

{ #category : #accessing }
TFlickrPaginatedResponse >> page [

	^ page
]

{ #category : #accessing }
TFlickrPaginatedResponse >> page: anObject [

	page := anObject
]

{ #category : #accessing }
TFlickrPaginatedResponse >> pageSize [

	^ pageSize
]

{ #category : #accessing }
TFlickrPaginatedResponse >> pageSize: anObject [

	pageSize := anObject
]

{ #category : #accessing }
TFlickrPaginatedResponse >> pages [

	^ pages
]

{ #category : #accessing }
TFlickrPaginatedResponse >> pages: anObject [

	pages := anObject
]

{ #category : #accessing }
TFlickrPaginatedResponse >> total [

	^ total
]

{ #category : #accessing }
TFlickrPaginatedResponse >> total: anObject [

	total := anObject
]
