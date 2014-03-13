class window.Scrollbars
	constructor: (@ref) ->
		# window.scrollers = []
		$(window).on "iscrollinit",() =>
			@init()

	init: () =>
		# iscrollOptions = {
		# 	mouseWheel:true
		# 	scrollbars: "custom"
		# 	click: true
		# 	#snap: ".item"
		# 	interactiveScrollbars: true
		# }
		# window.scrollers[0] = new IScroll ".first",iscrollOptions
