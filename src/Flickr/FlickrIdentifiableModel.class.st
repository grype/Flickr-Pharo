Class {
	#name : #FlickrIdentifiableModel,
	#superclass : #FlickrModel,
	#instVars : [
		'id'
	],
	#category : #'Flickr-Models'
}

{ #category : #accessing }
FlickrIdentifiableModel >> neoJsonMapping: mapper [

	mapper for: self do: [ :mapping | mapping mapInstVars: #( #id ) ]
]
