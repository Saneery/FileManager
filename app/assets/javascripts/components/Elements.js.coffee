@Elements = React.createClass
	getInitialState: ->
    		elements: @props.data
	render: ->
		React.DOM.div
			className: 'elements'
			React.DOM.ul null,
				elemList(@state.elements)