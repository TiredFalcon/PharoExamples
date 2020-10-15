Class {
	#name : #WAContact,
	#superclass : #WAComponent,
	#instVars : [
		'contact'
	],
	#category : #'ContactBook-Components'
}

{ #category : #'as yet unclassified' }
WAContact class >> editContact: aContact [
	^ self new
		contact: aContact;
		yourself
]

{ #category : #accessing }
WAContact >> contact [
	^ contact
]

{ #category : #accessing }
WAContact >> contact: anObject [
	contact := anObject
]

{ #category : #initialization }
WAContact >> initialize [
	super initialize.
	contact := Contact new.
]

{ #category : #rendering }
WAContact >> renderButtonsOn: html [
	html tbsFormGroup: [
		html tbsButtonGroup: [
			self renderSubmitButtonOn: html;
				renderCancelButtonOn: html
		]
	]
]

{ #category : #rendering }
WAContact >> renderCancelButtonOn: html [
	html tbsButton
		beDanger;
		cancelCallback: [ self answer: nil ];
		with: 'Cancel'
]

{ #category : #rendering }
WAContact >> renderContentOn: html [
	html tbsContainer: [
		html heading: 'Contact Editing'.
		html tbsForm with: [
			self renderFieldsOn: html.
			self renderButtonsOn: html
		]
	]
]

{ #category : #rendering }
WAContact >> renderEmailFieldOn: html [
	html tbsFormGroup: [
		html label: 'Email'.
		html emailInput
			tbsFormControl;
			placeholder: 'your@email.eu';
			callback: [ :value | self contact email: value address ];
			value: (self contact email ifNil: '')
	]
]

{ #category : #rendering }
WAContact >> renderFieldsOn: html [
	self renderFullnameFieldOn: html.
	self renderEmailFieldOn: html
]

{ #category : #rendering }
WAContact >> renderFullnameFieldOn: html [
	html tbsFormGroup: [
		html label: 'Fullname'.
		html textInput
			tbsFormControl;
			placeholder: 'fullname';
			callback: [ :value | self contact fullname: value ];
			value: (self contact fullname ifNil: '')
		]
]

{ #category : #rendering }
WAContact >> renderSubmitButtonOn: html [
	html tbsSubmitButton
		beSuccess;
		bePrimary;
		callback: [ self answer: self contact ];
		with: 'Save'
]
