Class {
	#name : #DieHandle,
	#superclass : #Object,
	#instVars : [
		'dice'
	],
	#category : #Dice
}

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
DieHandle >> maxValue [
	^ dice ifEmpty: [ ^ 0 ] ifNotEmpty: [ ^ (dice collect: #faces) sum: #yourself ]
	
]

{ #category : #accessing }
DieHandle >> roll [
	^ dice ifEmpty: [ ^ 0 ] ifNotEmpty: [ ^ (dice collect: #roll) sum: #yourself ]
	
]
