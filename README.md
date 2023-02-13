# Flickr-Pharo
A grossly incomplete Flickr SDK for Pharo.

## Installing

```smalltalk
Metacello new
	  baseline: 'Flickr';
	  repository: 'github://grype/Flickr-Pharo:main/src';
	  load.
```

## Using

```smalltalk
flickr := Flickr newWithKey: '<your-api-key>'.

photo := flickr photos search text: 'bird closeup'; first.
size := (flickr photoWithId: photo id) sizes smallestSizeExceeding: 2560@1440.
form := Form fromBinaryStream: (ZnEasy get: size source aUrl asUrl).
```

### What is supported

At the moment, you can search people:

```smalltalk
user := flickr people findByUsername: 'someone'.
```

search photos:

```smalltalk
aPageOfPhotos := flickr photos search text: 'some query'; fetchPage.
```

get photo sizes:

```smalltalk
sizeSpecs := (flickr photoWithId: photo id) sizes.
```

interestingness:

```smalltalk
aPageOfPhotos := flickr interestingness fetchPage.
```

Photos and Interestingness endpoints are enumerable and act like collections:

```smalltalk
flickr photos search text: 'some query'; collect: [ :aPhoto |
    aPhoto -> ((flickr photoWithId: aPhoto id) sizes)
].
```

Which means we can lazily crawl over those endpoints with Generators:

```smalltalk
cursor := FlickrPageCursor new page: 1; pageSize: 100; yourself.generator := Generator on: [ :aGenerator | 	[cursor hasMore] whileTrue: [  		flickr interestingness nextWith: cursor			:> shuffled			:> do: [ :aPhoto | | form |				form := flickr photoWithId: aPhoto id					:> sizes					:> medianSize					:> source					:> asUrl					:> retrieveContents					:> ifNotNil: [ :data | Form fromBinaryStream: data readStream ].				aGenerator yield: form ]]].
				
generator next.
```

The idea here is that we fetch and #yield the appropriate size image, while paginating the endpoint via #nextWith:. The [Functional](https://github.com/dvmason/Pharo-Functional) syntax was thrown in for elegance.