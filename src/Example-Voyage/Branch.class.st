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
Branch class >> example2 [
	^ (1 to: 2) collect: [ :v | self example ]
]

{ #category : #testing }
Branch class >> isVoyageRoot [
	^ false
]

{ #category : #accessing }
Branch >> leaves [
	^ leaves
]

{ #category : #accessing }
Branch >> leaves: anObject [
	leaves := anObject
]
