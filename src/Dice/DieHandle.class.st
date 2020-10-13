Class {
	#name : #DieHandle,
	#superclass : #Object,
	#instVars : [
		'dice',
		'lastResult'
	],
	#category : #Dice
}

{ #category : #accessing }
DieHandle >> + aDieHandle [
	
	| handle |
	handle := self class new.
	self dice do: [ :each | handle addDie: each ].
	aDieHandle dice do: [ :each | handle addDie: each ].
	^ handle
	
]

{ #category : #accessing }
DieHandle >> addDie: aDie [

	dice add: aDie
]

{ #category : #accessing }
DieHandle >> dice [
	^ dice
]

{ #category : #accessing }
DieHandle >> diceNumber [
	^ dice size
]

{ #category : #initialization }
DieHandle >> initialize [ 

	super initialize.
	dice := OrderedCollection new.
]

{ #category : #accessing }
DieHandle >> lastResult [
	^ lastResult
]

{ #category : #accessing }
DieHandle >> maxValue [
	^ dice ifEmpty: [ ^ 0 ] ifNotEmpty: [ ^ (dice collect: #faces) sum: #yourself ]
	
]

{ #category : #operation }
DieHandle >> reset [
	dice := OrderedCollection new.
]

{ #category : #accessing }
DieHandle >> roll [
	^ dice ifEmpty: [ ^ 0 ] ifNotEmpty: [
		| result |
		result := (dice collect: #roll) sum: #yourself.
		lastResult := result.
		^ result
	]
	
]
