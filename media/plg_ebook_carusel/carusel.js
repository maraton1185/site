jQuery.noConflict();
jQuery(document).ready(function() {

	set_animation(animation_urls[0], animation_timelines[0], animation_urls[1]);
	
	content =
	[
		document.getElementById("content1")
	]

});

var animation_urls =
	[
	 	"/media/plg_ebook_carusel/snaps_packed.png"
	]

var animation_timelines =
	[
		snaps_timeline
	]

var cur_content = 0
var auto_cycle_content = true

function next()
{
	auto_cycle_content = false
	auto_next()
}

function auto_next()
{
	cur_content = (cur_content + 1) % content.length
	update_content()
}

function prev()
{
	auto_cycle_content = false
	auto_prev()
}

function auto_prev()
{
	--cur_content;
	if (cur_content < 0) cur_content = content.length - 1

	update_content()
}

function update_content()
{
	for (var i = 0; i < content.length; ++i)
		content[i].style.display = (i == cur_content) ? "block" : "none"

	ci = document.getElementById('content_index')
	ci.innerHTML = (cur_content + 1) + " / " + content.length

	set_animation(animation_urls[cur_content], animation_timelines[cur_content],
		animation_urls[(cur_content + 1) % content.length])
}

var delay_scale = 0.7
var timer = null

var animate = function(img, timeline, element)
{
	var i = 0

	var run_time = 0
	for (var j = 0; j < timeline.length - 1; ++j)
		run_time += timeline[j].delay

	var f = function()
	{
		var frame = i++ % timeline.length
		var delay = timeline[frame].delay * delay_scale
		var blits = timeline[frame].blit

		var ctx = element.getContext('2d')

		for (j = 0; j < blits.length; ++j)
		{
			var blit = blits[j]
			var sx = blit[0]
			var sy = blit[1]
			var w = blit[2]
			var h = blit[3]
			var dx = blit[4]
			var dy = blit[5]
			ctx.drawImage(img, sx, sy, w, h, dx, dy, w, h)
		}

		if (i == timeline.length * 2 && auto_cycle_content)
			timer = window.setTimeout(auto_next, delay)
		else
			timer = window.setTimeout(f, delay)
	}

	if (timer) window.clearTimeout(timer)
	f()
}

var animate_fallback = function(img, timeline, element)
{
	var i = 0

	var run_time = 0
	for (var j = 0; j < timeline.length - 1; ++j)
		run_time += timeline[j].delay

	var f = function()
	{
		if (i % timeline.length == 0)
		{
			while (element.hasChildNodes())
				element.removeChild(element.lastChild)
		}

		var frame = i++ % timeline.length
		var delay = timeline[frame].delay * delay_scale
		var blits = timeline[frame].blit

		for (j = 0; j < blits.length; ++j)
		{
			var blit = blits[j]
			var sx = blit[0]
			var sy = blit[1]
			var w = blit[2]
			var h = blit[3]
			var dx = blit[4]
			var dy = blit[5]

			var d = document.createElement('div')
			d.style.position = 'absolute'
			d.style.left = dx + "px"
			d.style.top = dy + "px"
			d.style.width = w + "px"
			d.style.height = h + "px"
			d.style.backgroundImage = "url('" + img.src + "')"
			d.style.backgroundPosition = "-" + sx + "px -" + sy + "px"

			element.appendChild(d)
		}

		if (i == timeline.length * 2 && auto_cycle_content)
			timer = window.setTimeout(auto_next, delay)
		else
			timer = window.setTimeout(f, delay)
	}

	if (timer) window.clearTimeout(timer)
	f()
}

function set_animation(img_url, timeline, preload_url)
{
	var img = new Image()
	img.onload = function()
	{
		var canvas = document.getElementById('target')
		if (canvas && canvas.getContext)
			animate(img, timeline, canvas)
		else
			animate_fallback(img, timeline, document.getElementById('fallback'))

		var preload_image = new Image()
		preload_image.src = preload_url
	}
	img.src = img_url
}

