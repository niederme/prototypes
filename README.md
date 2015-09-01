# prototypes.nieder.me

A simple [harp server](http://harpjs.com) setup for prototyping, set up for easy deployment to [GitHub Pages.](https://help.github.com/articles/creating-project-pages-manually/)

_Forked from: @jakemhiller’s [jh-harp-base](https://github.com/jakemhiller/jh-harp-base) and @emilybrick’s [gh-pages](https://github.com/emilybrick/prototypes/tree/gh-pages)._


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

### Add, Commit and Push

	$	git add .
	$	git commit -m "commit message here!"
	$	git push origin gh-pages
	
### Done!

	http://proto.nieder.me