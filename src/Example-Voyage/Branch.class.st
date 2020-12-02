Class {
	#name : #Branch,
	#superclass : #Object,
	#instVars : [
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
	^ (1 to: 2) collect: [ :v | self example ]
]

{ #category : #testing }
Branch class >> isVoyageRoot [
	^ false
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
Branch >> ropes [
	ropes ifNil: [ ropes := Set new ].
	^ ropes
]
