# Run the Harp Server on port 8000
run:
	harp server -p 8000 ./_harp

# Compile for Github Pages
dev:
	rm -Rf ./css
	rm -Rf ./js
	harp compile ./_harp ./www
	mv -fv ./www/* ./
	rm -R ./www
