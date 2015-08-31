# Usage Instructions

### Run the Harp Server on port 8000

	$	make run
    
	harp server _harp/ -p 8000

### Compile for Github Pages

	$ 	make dev
	
	rm -Rf *.html
	rm -Rf ./css
	rm -Rf ./js
	harp compile ./_harp ./www
	mv -fv ./www/* ./
	rm -R ./www
