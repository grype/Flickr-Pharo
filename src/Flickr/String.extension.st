Extension { #name : #String }

{ #category : #'*Flickr' }
String >> asSnakeCase [

	self
		replaceAll: [ :char | char isUppercase ]
		with: [ :char | char asLowercase , '_' ]
]
