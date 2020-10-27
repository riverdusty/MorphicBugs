Class {
	#name : #FilledFormBack,
	#superclass : #PolygonMorph,
	#instVars : [
		'bugCanvas'
	],
	#category : #MorphicBugs
}

{ #category : #'event handling' }
FilledFormBack >> handlesMouseDown: evt [
	^true
]

{ #category : #'event handling' }
FilledFormBack >> inform: aString [
	GrowlMorph 
		openWithLabel: 'Information' translated 
		contents: aString
		backgroundColor: Color lightRed 
		labelColor: Color blue
]

{ #category : #'event handling' }
FilledFormBack >> morphicLayerNumber [
	self setProperty: #morphicLayerNumber toValue: 10.
	^10
]

{ #category : #'event handling' }
FilledFormBack >> mouseDown: evt [
	Transcript crShow: 'Back Clicked'.
	self inform: 'Back Clicked'.
	evt wasHandled: true.
]
