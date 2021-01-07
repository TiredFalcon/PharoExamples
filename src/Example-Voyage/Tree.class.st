Class {
	#name : #Tree,
	#superclass : #Object,
	#instVars : [
		'branches'
	],
	#category : #'Example-Voyage'
}

{ #category : #testing }
Tree class >> example [
	^ self new
		branches: (Branch exampleN: 10000 withLeaves: true);
		yourself
]

{ #category : #testing }
Tree class >> isVoyageRoot [
	^ true
]

{ #category : #accessing }
Tree >> branches [
	^ branches
]

{ #category : #accessing }
Tree >> branches: aCollection [ 
	branches := aCollection
]

{ #category : #accessing }
Tree >> leaves [
	^ self branches flatCollect: #leaves
]
