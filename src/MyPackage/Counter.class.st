Class {
	#name : #Counter,
	#superclass : #Object,
	#instVars : [
		'count'
	],
	#category : #MyPackage
}

{ #category : #'as yet unclassified' }
Counter class >> startingAt: anInteger [ 
	^ self new count: anInteger.
]

{ #category : #accessing }
Counter >> count [
	^ count
]

{ #category : #accessing }
Counter >> count: anInteger [
	count := anInteger
]

{ #category : #'as yet unclassified' }
Counter >> decrement [
	count := count - 1.
]

{ #category : #'as yet unclassified' }
Counter >> increment [
	count := count + 1.
]

{ #category : #initialization }
Counter >> initialize [
	super initialize.
	count := 0.
]

{ #category : #'as yet unclassified' }
Counter >> reset [
	count := 0.
]
