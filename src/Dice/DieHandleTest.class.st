Class {
	#name : #DieHandleTest,
	#superclass : #TestCase,
	#category : #'Dice-Tests'
}

{ #category : #tests }
DieHandleTest >> testCreationAndAdding [
	| handle |
	handle := DieHandle new
		addDie: (Die withFaces: 6);
		addDie: (Die withFaces: 10);
		yourself.
	self assert: handle diceNumber equals: 2
]

{ #category : #tests }
DieHandleTest >> testCreationWithSameDice [
	| handle |
	handle := DieHandle new addDie: (Die withFaces: 6).
	self assert: handle diceNumber equals: 1.
	handle addDie: (Die withFaces: 6).
	self assert: handle diceNumber equals: 2
]

{ #category : #tests }
DieHandleTest >> testMaxValue [
	| handle |
	handle := DieHandle new
		addDie: (Die withFaces: 6);
		addDie: (Die withFaces: 10).
	self assert: handle maxValue equals: 16
]

{ #category : #tests }
DieHandleTest >> testRoll [
	| handle maxValue diceNumber |
	handle := DieHandle new
		addDie: (Die withFaces: 6);
		addDie: (Die withFaces: 10).
	diceNumber := handle diceNumber.
	maxValue := handle maxValue.
	100 timesRepeat: [
		self assert: (handle roll between: diceNumber and: maxValue)
	]
]

{ #category : #tests }
DieHandleTest >> testSimpleHandleFromInteger [
	
	self assert: 2 D20 diceNumber equals: 2.
	
]

{ #category : #tests }
DieHandleTest >> testSumming [
	
	self assert: (3 D4 + 7 D6) diceNumber equals: 10.
	
]
