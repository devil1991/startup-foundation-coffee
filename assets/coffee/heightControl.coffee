class window.HeightCtrl
	constructor: (@ref) ->

	onResize: (w,h) =>
		@windowHeight = window.innerHeight
		if Modernizr.touch
			$("body").css "height",@windowHeight
		# @ref.css "height",_wall