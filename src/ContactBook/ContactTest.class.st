Class {
	#name : #ContactTest,
	#superclass : #TestCase,
	#category : #'ContactBook-Tests'
}

{ #category : #tests }
ContactTest >> testContactCreation [
	| contact |
	contact := Contact newNamed: 'Aron Fiechter' email: 'aron.fiechter@gmail.com'.
	self assert: contact fullname equals: 'Aron Fiechter'.
	self assert: contact email equals: 'aron.fiechter@gmail.com'.
]

{ #category : #tests }
ContactTest >> testContactCreationEmailLowercase [
	| contact |
	contact := Contact newNamed: 'Aron Fiechter' email: 'ARON.FIECHTER@GMAIL.COM'.
	self assert: contact fullname equals: 'Aron Fiechter'.
	self assert: contact email equals: 'aron.fiechter@gmail.com'.
]

{ #category : #tests }
ContactTest >> testContactCreationTrimmed [
	| contact |
	contact := Contact newNamed: '   Aron Fiechter  ' email: '       aron.fiechter@gmail.com    '.
	self assert: contact fullname equals: 'Aron Fiechter'.
	self assert: contact email equals: 'aron.fiechter@gmail.com'.
]
