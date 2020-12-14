Class {
	#name : #Trunk,
	#superclass : #Object,
	#instVars : [
		'branches'
	],
	#category : #'Example-Voyage'
}

{ #category : #testing }
Trunk class >> example [
	^ self new
		branches: Branch example20;
		yourself
]

{ #category : #testing }
Trunk class >> isVoyageRoot [
	^ true
]

{ #category : #actions }
Trunk >> addRopes [
	self branches overlappingPairsDo: [ :aBranch1 :aBranch2 |
		10 atRandom > 5 ifTrue: [ aBranch1 addRopeTo: aBranch2 ] ] 
]

{ #category : #accessing }
Trunk >> branches [
	^ branches
]

{ #category : #accessing }
Trunk >> branches: anObject [
	branches := anObject
]
