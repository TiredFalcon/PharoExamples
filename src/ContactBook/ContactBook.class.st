"
I represent a contact book.
I contain a list of zero or more Contacts, and I understand messages to add or remove contacts from myself.
"
Class {
	#name : #ContactBook,
	#superclass : #Object,
	#instVars : [
		'contacts'
	],
	#category : #'ContactBook-Model'
}

{ #category : #creating }
ContactBook class >> createDefault [
	^ self new
		addContact: (Contact newNamed: 'Damien Cassou' email: 'damien@cassou.me');
		addContact: (Contact newNamed: 'Marcus Denker' email: 'marcus.denker@inria.fr');
		addContact: (Contact newNamed: 'Tudor Girba' email: 'tudor@tudorgirba.com');
		addContact: (Contact newNamed: 'Clara Allende' email: 'clari.allende@gmail.com');
		addContact: (Contact newNamed: 'Aron Fiechter' email: 'aron.fiechter@gmail.com');
		yourself
]

{ #category : #action }
ContactBook >> addContact: aContact [ 
	self contacts add: aContact
]

{ #category : #accessing }
ContactBook >> contacts [
	^ contacts ifNil: [ contacts := OrderedCollection new ]
]

{ #category : #actions }
ContactBook >> removeContact: aContact [ 
	self contacts remove: aContact ifAbsent: [].
]
