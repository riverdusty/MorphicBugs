Class {
	#name : #FilledFormBug,
	#superclass : #Object,
	#instVars : [
		'front',
		'back',
		'browser'
	],
	#category : #MorphicBugs
}

{ #category : #'instance creation' }
FilledFormBug class >> open [
	self new browser
]

{ #category : #accessing }
FilledFormBug >> back [
	^back ifNil: [ 
		back := (FilledFormBack vertices: {261@400. 388@519. 302@595. 	222@500.	141@583. 34@444}
		color: Color red
		borderWidth: 3
		borderColor: Color black).
		back beStraightSegments.
		back rectangleOval.
		back ]
]

{ #category : #accessing }
FilledFormBug >> browser [
	| formMorph |
self build.
formMorph := (FilledFormBug new build) front filledForm.
formMorph := ImageMorph withForm: formMorph.
browser := GLMTabulator new.
browser row: [ :r | r column: #morph; column: #form ].
browser transmit to: #morph; andShow: [ :a  | a morph with: [:b | b morph: self back ]].
browser transmit to: #form; andShow: [ :a  | a morph with: [:b | b morph: formMorph ]].
browser openOn: self
]

{ #category : #accessing }
FilledFormBug >> build [
	self back addMorph: self front.
	self front comeToFront.
]

{ #category : #accessing }
FilledFormBug >> front [
	^front ifNil: [ 
		front := (FilledFormFront vertices: {261@400. 388@519. 302@595. 	222@500.	141@583. 34@444}
		color: Color blue
		borderWidth: 3
		borderColor: Color black).
		 front ]
]
