as yet unclassified
buildWith: builder
	| mainWidgets mainWidgetsPanel window |
	self realizeChangesList.
	mainWidgets := self chooserWidgetSpecs: builder.
	mainWidgetsPanel := builder pluggablePanelSpec new
		children: mainWidgets;
		frame: (LayoutFrame
			fractions: (0@0 corner: 1@1)
			offsets: (0@0 corner: 0@ 0));
		yourself.
	window := builder pluggableWindowSpec new.
	window model: self;
		label: self labelString;
		children: {mainWidgetsPanel}.
	^ builder build: window