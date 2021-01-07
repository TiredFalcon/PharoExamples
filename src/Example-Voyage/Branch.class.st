Class {
	#name : #Branch,
	#superclass : #Object,
	#instVars : [
		'n',
		'leaves',
		'ropes'
	],
	#category : #'Example-Voyage'
}

{ #category : #example }
Branch class >> example [
	^ self new
		leaves: Leaf example3;
		yourself
]

{ #category : #example }
Branch class >> example2 [
	^ self exampleN: 2
]

{ #category : #example }
Branch class >> example20 [
	^ self exampleN: 20
]

{ #category : #example }
Branch class >> example2000 [
	^ self exampleN: 2000
]

{ #category : #example }
Branch class >> exampleN: aNumber [
	^ (1 to: aNumber) collect: [ :v |
		self example n: v; yourself ]
]

{ #category : #testing }
Branch class >> isVoyageRoot [
	^ true
]

{ #category : #testing }
Branch class >> mongoRopes [
   <mongoDescription>
   ^ VOToManyDescription new
      attributeName: 'ropes';
      kindCollection: Set;
      yourself
]

{ #category : #accessing }
Branch >> addRopeTo: aBranch [
	self ropes add: (Rope new from: self; to: aBranch)
]

{ #category : #accessing }
Branch >> initialize [
	super initialize.
	ropes := Set new.
]

{ #category : #accessing }
Branch >> leaves [
	^ leaves
]

{ #category : #accessing }
Branch >> leaves: anObject [
	leaves := anObject
]

{ #category : #accessing }
Branch >> n [
	^ n
]

{ #category : #accessing }
Branch >> n: anObject [
	n := anObject
]

{ #category : #printing }
Branch >> printOn: aStream [
	super printOn: aStream.
	aStream
		nextPutAll: ' (';
		print: self n;
		nextPutAll: ')'
]

{ #category : #accessing }
Branch >> ropes [
	ropes ifNil: [ ropes := Set new ].
	^ ropes
]
