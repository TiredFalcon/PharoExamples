Class {
	#name : #Leaf,
	#superclass : #Object,
	#instVars : [
		'value'
	],
	#category : #'Example-Voyage'
}

{ #category : #example }
Leaf class >> example [
	^ self new
		value: 1000 atRandom;
		yourself
]

{ #category : #example }
Leaf class >> example3 [
	^ (1 to: 3) collect: [ :v | self example ]
]

{ #category : #testing }
Leaf class >> isVoyageRoot [
	^ true
]

{ #category : #accessing }
Leaf >> value [
	^ value
]

{ #category : #accessing }
Leaf >> value: anObject [
	value := anObject
]
