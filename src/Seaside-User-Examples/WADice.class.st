Class {
	#name : #WADice,
	#superclass : #WAComponent,
	#instVars : [
		'dieHandle'
	],
	#category : #'Seaside-User-Examples'
}

{ #category : #initialization }
WADice >> initialize [
	dieHandle := DieHandle new.
]

{ #category : #rendering }
WADice >> renderContentOn: html [
	html image url: 'http://www.seaside.st/styles/logo-plain.png'.
	html paragraph: 'Hello World from Seaside.'.
	html paragraph: [ 
		html text: 'To learn more about Seaside components follow the link to the book: '.
		html anchor
			url: 'http://book.seaside.st/book/fundamentals/rendering-components';
			with: 'Dynamic Web Development with Seaside'.
		html text: '.' ]
]
