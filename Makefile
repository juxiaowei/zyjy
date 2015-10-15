.PHONY: css
css:
	mkdir -p bundle
	postcss --watch --use autoprefixer --use postcss-import css/css.css --output bundle/css.css

.PHONY: server
server:
	browser-sync start --server --files='index.html,bundle/css.css,js/index.js'

.PHONY: clean
clean:
	rm -r bundle
