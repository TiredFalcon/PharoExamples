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
		branches: Branch example2;
		yourself
]

{ #category : #testing }
Trunk class >> isVoyageRoot [
	^ true
]

{ #category : #accessing }
Trunk >> branches [
	^ branches
]

{ #category : #accessing }
Trunk >> branches: anObject [
	branches := anObject
]
