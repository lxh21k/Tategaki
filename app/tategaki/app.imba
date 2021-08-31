import { Article } from './article'
import fetch from 'node-fetch'
import '../css/style.css'


let articleStore = new Article window.location.pathname 
const url = articleStore.url

fetch(url).then(do(res)
	res.json!
).then do(data)
	articleStore.parse data

# @ts-ignore
document.fonts.onloadingdone = do(e)
	# Forcing Chrome to re-calculate TCY width
	# It's unbearably worked-around
	for ele\HTMLElement in document.getElementsByClassName 'tcy'
		ele.style.display = 'none'
		setTimeout(do
			ele.style.display = 'inline'
		1)

window.onresize = do
	def articleHeight
		const threshold = 712
		if window.innerHeight >= threshold
			return 32rem
		
		const raw = 32 - Math.ceil((threshold - window.innerHeight) / 18)
		if raw < 20
			return 20rem

		return "{raw}rem"

	let article = document.getElementsByTagName('article')[0]
	let imgs = document.getElementsByTagName('img')

	article.style.height = articleHeight!
	for img in imgs
		img.style.height = articleHeight!

# Entrance, will not render anything except `<Footer>`
# before retrieving data
tag app
	<self#app lang="zh-Hant">
		<Footer>

# Extra information. Should be removed in future
tag Footer
	css self
		pos:fixed
		b:0
		l:0
		r:0
		writing-mode:horizontal-tb
		ta:center
		p:10px
		c:#787f86
		lh:normal

	<self.latin>
		<small>
			<b> "Denpo in Tategaki"
			" is under development. If any issue arise, feel free to contact Toto at "
			<a href="mailto:the@unpopular.me"> "the@unpopular.me"
			" or join " 
			<a href="https://t.me/denpo_beta"> "Telegram Group"
			" at your convenience."