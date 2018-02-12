.PHONY: demo


all: build demo


build:
	@cp src/template.html dist/template.html
	@node index.js


demo:
	@snowboard html -o index.html -t dist/template.html demo/demo.apib


watch:
	@watchexec \
		--filter "*.apib" \
		--filter "*.css" \
		--filter "*.html" \
		--ignore "index.html" \
		--ignore "dist/*.*" \
		make
