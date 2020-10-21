Class {
	#name : #WADice,
	#superclass : #WAComponent,
	#instVars : [
		'dieHandle'
	],
	#category : #Dice
}

{ #category : #'class initialization' }
WADice class >> initialize [
	(WAAdmin register: self asApplicationAt: 'MyDiceApp')
		addLibrary: JQDeploymentLibrary;
		addLibrary: TBSDeploymentLibrary
]

{ #category : #initialization }
WADice >> initialize [
	super initialize.
	dieHandle := DieHandle new.
]

{ #category : #rendering }
WADice >> renderContentOn: html [
	html heading: 'Dice roller'.
	html paragraph: 'Current dice'.
	html unorderedList: [
		dieHandle dice do: [ :die | html listItem: die asString ]
	].
	html form: [
      html text: 'Add a die: '.
		html textInput
			attributeAt: 'autocomplete' put: 'off';
			attributeAt: 'type' put: 'number';
			callback: [ :value | dieHandle addDie: (Die withFaces: value asInteger) ];
			placeholder: 'Number of faces'.
      html space.
      html submitButton
	].
	html anchor
		callback: [ dieHandle roll ];
		with: 'Roll'.
	html space.
	html anchor
		callback: [ dieHandle reset ];
		with: 'Remove all die'.
	html paragraph: [
		html text: 'Last result: '.
		html text: dieHandle lastResult.
	].
	html paragraph: [ 
		html text: 'To learn more about Seaside components follow the link to the book: '.
		html anchor
			url: 'http://book.seaside.st/book/fundamentals/rendering-components';
			with: 'Dynamic Web Development with Seaside'.
		html text: '.' ]
]

{ #category : #rendering }
WADice >> updateRoot: anHtmlRoot [
	super updateRoot: anHtmlRoot.
	anHtmlRoot title: 'My Dice App'
]
