Class {
	#name : #ContactBookTest,
	#superclass : #TestCase,
	#instVars : [
		'contact'
	],
	#category : #'ContactBook-Tests'
}

{ #category : #running }
ContactBookTest >> setUp [
	"Hooks that subclasses may override to define the fixture of test."
	super setUp.
	contact := (Contact newNamed: 'Aron Fiechter' email: 'aron.fiechter@gmail.com').

]

{ #category : #tests }
ContactBookTest >> testAddContact [
	| contactBook |
	contactBook := ContactBook new.
	contactBook addContact: (Contact newNamed: 'Aron Fiechter' email: 'aron.fiechter@gmail.com').
	self assert: contactBook contacts size equals: 1.
	self assert: contactBook contacts anyOne fullname equals: 'Aron Fiechter'.
]

{ #category : #tests }
ContactBookTest >> testCreateDefault [
	| contactBook |
	contactBook := ContactBook createDefault.
	self assert: contactBook contacts size equals: 4.
]

{ #category : #tests }
ContactBookTest >> testCreation [
	| contactBook |
	contactBook := ContactBook new.
	self assert: contactBook contacts size equals: 0
]

{ #category : #tests }
ContactBookTest >> testRemoveContact [
	| contactBook |
	contactBook := ContactBook new.
	contactBook addContact: contact.
	self assert: contactBook contacts size equals: 1.
	contactBook removeContact: contact.
	self assert: contactBook contacts size equals: 0.
]

{ #category : #tests }
ContactBookTest >> testRemoveNonExistingContact [
	| contactBook |
	contactBook := ContactBook new.
	contactBook addContact: contact.
	self assert: contactBook contacts size equals: 1.
	contactBook removeContact: (Contact newNamed: 'Foo' email: 'bar@example.com').
	self assert: contactBook contacts size equals: 1.
]
