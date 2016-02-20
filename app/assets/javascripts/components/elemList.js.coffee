@elemList = (elements) ->
	for key, value of elements
		if (value == false)
			React.DOM.li null, key
		else
			React.DOM.li null, 
				React.DOM.a href: "/"+value, key