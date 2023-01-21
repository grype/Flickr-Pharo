Class {
	#name : #FlickrResponseReader,
	#superclass : #Object,
	#classVars : [
		'JSONResponsePrefix'
	],
	#category : #'Flickr-Core'
}

{ #category : #'instance creation' }
FlickrResponseReader class >> fromString: aString [
	^ self new parse: aString
]

{ #category : #initialization }
FlickrResponseReader class >> initialize [
	JSONResponsePrefix := 'jsonFlickrApi('
]

{ #category : #parsing }
FlickrResponseReader >> parse: aString [

	(aString beginsWith: JSONResponsePrefix) ifFalse: [ 
		^ FlickrUnexpectedResponseError signal ].

	^ NeoJSONReader
		  fromString:
		  (aString
			   copyFrom: JSONResponsePrefix size + 1
			   to: aString size - 1)
		  as: FlickrResponse
]
