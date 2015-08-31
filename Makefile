# Run the Harp Server on port 8000
run:
	./node_modules/.bin/harp server _harp/ -p 8000

## Compile for Github Pages
dev:
	./node_modules/.bin/harp compile _harp ./
