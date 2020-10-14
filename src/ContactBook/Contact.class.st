"
I represent a person with a name and an email address.
I'm usually part of a contact book.
"
Class {
	#name : #Contact,
	#superclass : #Object,
	#instVars : [
		'fullname',
		'email'
	],
	#category : #ContactBook
}

{ #category : #creating }
Contact class >> newNamed: aNameString email: anEmailString [ 
	^ self new fullname: aNameString trim; email: anEmailString trim asLowercase
]

{ #category : #accessing }
Contact >> email [
	^ email
]

{ #category : #accessing }
Contact >> email: aString [ 
	email := aString
]

{ #category : #accessing }
Contact >> fullname [
	^ fullname
]

{ #category : #accessing }
Contact >> fullname: aString [ 
	fullname := aString
]

{ #category : #printing }
Contact >> printOn: aStream [
	aStream
		nextPutAll: self fullname;
		nextPutAll: ' <';
		nextPutAll: self email;
		nextPutAll: '>'
]
