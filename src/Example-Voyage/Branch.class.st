Class {
	#name : #Branch,
	#superclass : #Object,
	#instVars : [
		'leaves'
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
Branch class >> exampleN: aNumber withLeaves: aBoolean [
	^ (1 to: aNumber) collect: [ :v |
		aBoolean ifTrue: [ self example ] ifFalse: [ self exampleNoLeaves ] ]
]

{ #category : #example }
Branch class >> exampleNoLeaves [
	^ self new
]

{ #category : #testing }
Branch class >> isVoyageRoot [
	^ true
]

{ #category : #accessing }
Branch >> initialize [
	super initialize.
	leaves := OrderedCollection new.
]

{ #category : #accessing }
Branch >> leaves [
	^ leaves
]

{ #category : #accessing }
Branch >> leaves: anObject [
	leaves := anObject
]
