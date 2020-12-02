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
	| trunk |
	trunk := self new
		branches: Branch example2;
		yourself.
	trunk branches first addRopeTo: trunk branches second.
	^ trunk
]

{ #category : #testing }
Trunk class >> isVoyageRoot [
	^ false
]

{ #category : #accessing }
Trunk >> branches [
	^ branches
]

{ #category : #accessing }
Trunk >> branches: anObject [
	branches := anObject
]
