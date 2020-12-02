Class {
	#name : #Rope,
	#superclass : #Object,
	#instVars : [
		'from',
		'to'
	],
	#category : #'Example-Voyage'
}

{ #category : #testing }
Rope class >> isVoyageRoot [
	^ true
]

{ #category : #accessing }
Rope >> from [
	^ from
]

{ #category : #accessing }
Rope >> from: anObject [
	from := anObject
]

{ #category : #accessing }
Rope >> to [
	^ to
]

{ #category : #accessing }
Rope >> to: anObject [
	to := anObject
]
