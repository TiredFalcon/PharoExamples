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
Rope >> equals: anObject [
	^ self class = anObject class
		and: [ self from = anObject from
		and: [ self to = anObject to ] ]
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
Rope >> hash [
	^ from hash bitXor: to hash
]

{ #category : #accessing }
Rope >> to [
	^ to
]

{ #category : #accessing }
Rope >> to: anObject [
	to := anObject
]
