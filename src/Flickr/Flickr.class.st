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
Flickr >> configure [
	super configure.
	WSCurrentContext value ifNotNil: [ :context | 
		| http endpoint |

		http := context transport.
		http
			queryAt: #api_key put: apiKey;
			queryAt: #format put: #json.
			
		http contentReader: [ :entity | 
			FlickrResponseReader fromString: entity contents ].

		endpoint := context endpoint.
		endpoint method ifNotNil: [ :val | http queryAt: #method put: val ].
		endpoint class slots select: #isFlickrQuery thenDo: [ :aSlot | 
			(aSlot read: endpoint) ifNotNil: [ :val | 
				http queryAt: aSlot queryName put: val ] ] ]
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
Flickr >> interestingness [
	^ self / FlickrInterestingnessEndpoint 
]

{ #category : #endpoints }
Flickr >> people [
	^ self / FlickrPeopleEndpoint 
]

{ #category : #endpoints }
Flickr >> photoWithId: anId [

	^ (self / FlickrPhotoEndpoint)
		  photoId: anId;
		  yourself
]

{ #category : #endpoints }
Flickr >> photos [
	^ self / FlickrPhotosEndpoint 
]
