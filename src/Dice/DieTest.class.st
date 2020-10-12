Class {
	#name : #DieTest,
	#superclass : #TestCase,
	#category : #'Dice-Tests'
}

{ #category : #tests }
DieTest >> testCreationWithFaces [
	| d |
	d := Die withFaces: 20.
	self assert: d faces equals: 20.
]

{ #category : #tests }
DieTest >> testInitializationIsOk [
	| d |
	d := Die new.
	self assert: d faces equals: 6.
]

{ #category : #tests }
DieTest >> testRolling [
	| d |
	d := Die new.
	100 timesRepeat: [
		self assert: (d roll between: 1 and: 6)
	]
]
