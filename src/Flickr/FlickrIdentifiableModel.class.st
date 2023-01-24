Class {
	#name : #FlickrIdentifiableModel,
	#superclass : #FlickrModel,
	#instVars : [
		'id'
	],
	#category : #'Flickr-Models'
}

{ #category : #accessing }
FlickrIdentifiableModel class >> neoJsonMapping: mapper [

	mapper for: self do: [ :mapping | mapping mapInstVars: #( #id ) ]
]

{ #category : #accessing }
FlickrIdentifiableModel >> id [

	^ id
]

{ #category : #accessing }
FlickrIdentifiableModel >> id: anObject [

	id := anObject
]
