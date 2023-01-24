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
