unless window.console then window.console = {log: ((obj) ->)}

$ ->

	window_ref = $ window
	###################
	# USER AGENT CHECK#
	###################

	# getInternetExplorerVersion = ->

	# 	matches = new RegExp(" MSIE ([0-9].[0-9]);").exec(window.navigator.userAgent)
	# 	version = if matches? and matches.length > 1 then parseInt(matches[1].replace(".0", "")) else -1
	# 	return version

	getIOSVersion = ->
		if /iP(hone|od|ad)/.test(navigator.platform)
			v = (navigator.appVersion).match(/OS (\d+)_(\d+)_?(\d+)?/)
			return [parseInt(v[1], 10), parseInt(v[2], 10), parseInt(v[3] || 0, 10)]
		else
			return false


	# window.ie_version = getInternetExplorerVersion()
	window.has_ios = getIOSVersion()

	# window.is_ie = $.browser.msie
	# window.is_ie6 = $.browser.msie and ie_version is 6
	# window.is_ie7 = $.browser.msie and ie_version is 7
	# window.is_ie8 = $.browser.msie and ie_version is 8
	# window.is_ie9 = $.browser.msie and ie_version is 9
	# window.is_ie10 = $.browser.msie and ie_version is 10
	window.is_chrome = navigator.userAgent.toLowerCase().indexOf('chrome') > -1
	window.is_mobile = if navigator.userAgent.match(/iPhone/i) || navigator.userAgent.match(/iPod/i) || navigator.userAgent.match(/iPad/i) || navigator.userAgent.match(/Android/i) then true else false
	window.is_iphone = if navigator.userAgent.match(/iPhone/i) || navigator.userAgent.match(/iPod/i) then true else false
	window.is_ipad = if navigator.userAgent.match(/iPad/i) then true else false
	window.is_android = if navigator.userAgent.match(/Android/i) then true else false
	# window.is_firefox = $.browser.mozilla

	#Normal layout =>720
	window.phone_break_point = 720
	window.item_min_height = 140

	if window_ref.width() >= window.phone_break_point then window.desktop_size = true else window.desktop_size = false




	#######################
	#MQ FAIL IE WORKAROUND#
	#######################
	# if window.is_ie then ieResizer = new IEResizeHelper()


	################
	# EVENT EMITTER#
	################
	# window.event_emitter = new EventEmitter()

	#########################
	# To do after load data #
	#########################
	window.todo = {}

	###############
	#SCROLL BARS
	###############
	# scrollbarhelper = new Scrollbars


	# ###############
	# #Main Menu
	# ###############
	# menu = $ '#main-menu'
	# if menu.length is 1 then  menuObject = new Menu menu

	# ###############
	# #Height Control
	# ###############
	# mainSection = $ '.third-half'
	# window.heightSections = []
	# if mainSection.length >= 0
	# 	mainSection.each (i,ele) =>
	# 		window.heightSections[i] = new HeightCtrl $(ele)



  ########
  #FOOTER#
  ########

  # footer_cont = $ '#footer'
  # if footer_cont.length is 1 then footer = new Footer footer_cont


	# #################
	# # SOCIAL SHARING#
	# #################

	# sharing_modules = $ '.js-sharing'
	# if sharing_modules.length > 0
	# 	for i in [0...sharing_modules.length]
	# 		unless $(sharing_modules[i]).hasClass 'link'
	# 			new SocialSharing $(sharing_modules[i])

	# ########
	# #INPUT#
	# #######

	# input_boxes = $ '.input-js'
	# if input_boxes.length > 0
	# 	for i in [0...input_boxes.length]
	# 		new InputPlaceHolder input_boxes


	onWindowResize = =>

		window_w = window_ref.width()
		window_h = window_ref.height()
		# USAGE: if instance? then instance.onResize window_w, window_h
	 # if footer? then footer.onResize window_w, window_h
		# if elements.length > 0
		# 	for i in [0...elements.length]
		# 		window.elements[i].onResize window_w, window_h

		# if mainSection.length > 0
		# 	for i in [0...mainSection.length]
		# 		window.heightSections[i].onResize window_w, window_h
		# window.scrollers[0].refresh()
		# window.scrollers[1].refresh()
		# window.scrollers[2].refresh()

		# if slider? then slider.onResize()
		# #####################################################
		# #ADDING MOBILE CONTROLLER#
		# #####################################################
		# if !window.desktop_size and !mobileController? then window.mobileController = new MobileController header,toolbar
		# if mobileController? and !window.desktop_size then mobileController.onResize window_w, window_h

		# ##############################################################
		# #CHECK DEVICE ROTATION
		# ##############################################################
		# if window.is_mobile and window_w <= window.rotation_required_width and window_h < window.rotation_required_height and window_w > window_h and !window.GAIN_FOCUS
		# 	window.rotation_is_required = true
		# 	$('#rotate-your-device').show()
		# else
		# 	if window.rotation_is_required
		# 		window.rotation_is_required = false
		# 		$('#rotate-your-device').hide()
		# $(window).on "iscrollinit",() =>
		# 	halfSizer()




	window_ref.resize $.throttle 450,onWindowResize
	onWindowResize()

	# event_emitter.addListener 'RESIZE_ALL',onWindowResize

##########
# ON LOAD#
##########

$(window).load(->
	# imgs = $ "#scrollWall img"
	# imagesLoaded imgs, =>
	# 	$(window).trigger "iscrollinit"
)

