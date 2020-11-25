Class {
	#name : #Tree,
	#superclass : #Object,
	#instVars : [
		'trunk'
	],
	#category : #'Example-Voyage'
}

{ #category : #testing }
Tree class >> example [
	^ self new
		trunk: Trunk example;
		yourself
]

{ #category : #testing }
Tree class >> isVoyageRoot [
	^ false
]

{ #category : #accessing }
Tree >> leaves [
	^ self trunk branches flatCollect: #leaves
]

{ #category : #accessing }
Tree >> trunk [
	^ trunk
]

{ #category : #accessing }
Tree >> trunk: anObject [
	trunk := anObject
]
