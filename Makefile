.PHONY: demo


# ⚡️


all: build-base build-minified demo


watch:
	@watchexec \
		--filter "*.apib" \
		--filter "*.css" \
		--filter "*.html" \
		--ignore "index.html" \
		--ignore "dist/*.*" \
		make dev



# 🚜


build-base:
	@echo "> Building HTML & CSS"
	@cp src/template.html dist/template.html
	@node index.js


build-minified:
	@echo "> Building minified CSS"
	@MINIFY=t node index.js


demo:
	@echo "> Building demo"
	@snowboard html -o index.html -t dist/template.html demo/demo.apib &>/dev/null


dev: build-base demo
