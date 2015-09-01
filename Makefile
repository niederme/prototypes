# Run the Harp Server on port 8000
run:
	harp server -p 8000 ./_harp

# Clean and Compile for Github Pages
dev:
	rm -Rf *.html
	rm -Rf ./css
	rm -Rf ./js
	harp compile ./_harp ./www
	mv -fv ./www/* ./
	rm -R ./www

# Push!
push:
	make dev
	git add .
	git commit -m "lazy commit message"
	git push origin gh-pages
