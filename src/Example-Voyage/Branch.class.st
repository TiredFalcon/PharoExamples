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
	^ (1 to: 2) collect: [ :v |
		self example n: v; yourself ]
]

{ #category : #example }
Branch class >> example20 [
	^ (1 to: 20) collect: [ :v |
		self example n: v; yourself ]
]

{ #category : #example }
Branch class >> example2000 [
	^ (1 to: 2000) collect: [ :v |
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
