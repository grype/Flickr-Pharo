Extension { #name : #String }

{ #category : #'*Flickr' }
String >> asSnakeCase [

	^ self class new: self size streamContents: [ :out | 
		self do: [ :char | 
			char isUppercase
				ifTrue: [ 
					out
						nextPut: $_;
						nextPut: char asLowercase ]
				ifFalse: [ out nextPut: char ] ] ]
]
