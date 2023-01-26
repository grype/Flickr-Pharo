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
Flickr class >> APIKey [

	^ APIKey
]

{ #category : #accessing }
Flickr class >> APIKey: anObject [

	APIKey := anObject
]

{ #category : #accessing }
Flickr class >> default [
	^ self withUrl: DefaultUrl 
]

{ #category : #initialization }
Flickr class >> initialize [ 
	DefaultUrl := 'https://api.flickr.com/services/rest'
]

{ #category : #settings }
Flickr class >> settingsOn: builder [

	<systemsettings>
	(builder group: #Flickr)
		parent: #tools;
		label: 'Flickr';
		description: 'Flickr SDK Settings';
		with: [ 
			(builder setting: #APIKey)
				label: 'API Key';
				target: self;
				default: 'APIKey';
				description: 'Flickr API Key' ]
]

{ #category : #http }
Flickr >> configureOn: http [

	super configureOn: http.
	http
		queryAt: #api_key put: APIKey;
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

{ #category : #accessing }
Flickr >> people [
	^ self / FlickrPeopleEndpoint 
]

{ #category : #accessing }
Flickr >> photos [
	^ self / FlickrPhotosEndpoint 
]
