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
		'isfamily'
	],
	#category : #'Flickr-Models'
}

{ #category : #accessing }
FlickrPhoto class >> neoJsonMapping: mapper [
	mapper for: self do: [ :mapping | 
		mapping mapAllInstVars.
		]
]
