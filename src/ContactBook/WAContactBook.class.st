Class {
	#name : #WAContactBook,
	#superclass : #WAComponent,
	#instVars : [
		'contactBook'
	],
	#category : #'ContactBook-Components'
}

{ #category : #'class initialization' }
WAContactBook class >> initialize [
	(WAAdmin register: self asApplicationAt: 'MyContactBook')
		addLibrary: JQDeploymentLibrary;
		addLibrary: TBSDeploymentLibrary
]

{ #category : #accessing }
WAContactBook >> contactBook [
	^ contactBook ifNil: [ contactBook := ContactBook createDefault ]
]

{ #category : #accessing }
WAContactBook >> contacts [
	^ self contactBook contacts
]

{ #category : #iterating }
WAContactBook >> contactsDo: aBlock [
	self contacts do: aBlock
]

{ #category : #rendering }
WAContactBook >> renderContact: aContact on: html [
	html tableRow: [
		html tableData: aContact fullname; tableData: aContact email
	]
]

{ #category : #rendering }
WAContactBook >> renderContactsOn: html [
	html tbsTable: [
		html tableHead: [
			html tableHeading: 'Name'; tableHeading: 'Email'
		].
		self contactsDo: [ :contact |
			self renderContact: contact on: html
		]
	]
]

{ #category : #rendering }
WAContactBook >> renderContentOn: html [
	"Main entry point of the view. Render a title."
	html tbsContainer: [ 
		html heading
			level: 1;
			with: 'My Contact Book'.
		self renderContactsOn: html
	].
]

{ #category : #updating }
WAContactBook >> updateRoot: anHtmlRoot [
	super updateRoot: anHtmlRoot.
	anHtmlRoot title: 'My Contact Book'
]
