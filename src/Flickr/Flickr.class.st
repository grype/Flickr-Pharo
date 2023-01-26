Class {
	#name : #Flickr,
	#superclass : #WSClient,
	#instVars : [
		'apiKey'
	],
	#classVars : [
		'DefaultUrl'
	],
	#category : #'Flickr-Core'
}

{ #category : #accessing }
Flickr class >> defaultWithKey: aKey [

	^ self basicNew initializeWithUrl: DefaultUrl key: aKey
]

{ #category : #initialization }
Flickr class >> initialize [ 
	DefaultUrl := 'https://api.flickr.com/services/rest'
]

{ #category : #accessing }
Flickr class >> withUrl: aUrl key: aKey [

	^ self basicNew initializeWithUrl: aUrl key: aKey
]

{ #category : #http }
Flickr >> configureOn: http [

	super configureOn: http.
	http
		queryAt: #api_key put: apiKey ;
		queryAt: #format put: #json.
	http contentReader: [ :entity | 
		FlickrResponseReader fromString: entity contents ]
]

{ #category : #execution }
Flickr >> execute: anEndpoint with: aBlock [

	| response |
	response := super execute: anEndpoint with: aBlock.
	response isError ifTrue: [ FlickrResponseError signal: response ].
	^ response
]

{ #category : #initialization }
Flickr >> initialize [

	super initialize.
	baseUrl := DefaultUrl
]

{ #category : #initialization }
Flickr >> initializeWithUrl: aUrl key: aKey [

	self initialize.
	baseUrl := aUrl.
	apiKey := aKey
]

{ #category : #accessing }
Flickr >> people [
	^ self / FlickrPeopleEndpoint 
]

{ #category : #accessing }
Flickr >> photoWithId: anId [

	^ (self / FlickrPhotoEndpoint)
		  photoId: anId;
		  yourself
]

{ #category : #accessing }
Flickr >> photos [
	^ self / FlickrPhotosEndpoint 
]
