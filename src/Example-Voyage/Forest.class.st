Class {
	#name : #Forest,
	#superclass : #Object,
	#instVars : [
		'trees'
	],
	#category : #'Example-Voyage'
}

{ #category : #testing }
Forest class >> current [
	^ self selectAll
		ifNotEmpty: #anyOne
		ifEmpty: [ self new save ]
]

{ #category : #testing }
Forest class >> demo [
	| forest |
	forest := self current.
	forest addTree: Tree example.
	forest save.
]

{ #category : #testing }
Forest class >> initialize [
	self initializeLocalhostMongoDB
]

{ #category : #testing }
Forest class >> initializeLocalhostMongoDB [
	"Initalize DB on localhost. This will free us to specify the database each time."
	| repository |
	repository := VOMongoRepository database: 'forest'.
	repository enableSingleton.
]

{ #category : #testing }
Forest class >> isVoyageRoot [
	^ true
]

{ #category : #accessing }
Forest >> addTree: aTree [
	trees ifNil: [ trees := OrderedCollection new ].
	trees add: aTree
]

{ #category : #accessing }
Forest >> trees [
	^ trees
]
