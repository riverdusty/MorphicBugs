Class {
	#name : #FilledFormFront,
	#superclass : #PolygonMorph,
	#instVars : [
		'bugCanvas'
	],
	#category : #MorphicBugs
}

{ #category : #'event handling' }
FilledFormFront >> handlesMouseDown: evt [
	^true
]

{ #category : #'event handling' }
FilledFormFront >> inform: aString [
	GrowlMorph 
		openWithLabel: 'Information' translated 
		contents: aString
		backgroundColor: Color lightBlue 
		labelColor: Color red
]

{ #category : #'event handling' }
FilledFormFront >> morphicLayerNumber [
	self setProperty: #morphicLayerNumber toValue: 5.
	^5
]

{ #category : #'event handling' }
FilledFormFront >> mouseDown: evt [
	Transcript crShow: 'Front Clicked'.
	self inform: 'Front Clicked'.
	evt wasHandled: true.
]
