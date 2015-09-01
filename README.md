# prototypes.nieder.me

A simple [harp server](http://harpjs.com) setup for prototyping, set up for easy deployment to [GitHub Pages.](https://help.github.com/articles/creating-project-pages-manually/) 

***
![http://github.com/buzzfeed/solid](http://cl.ly/coBI/logos.png)

This implementation includes BuzzFeed’s [Solid CSS framework](http://github.com/buzzfeed/solid), as well as @niederme’s simple prototypes. 

_Forked from: @jakemhiller’s [jh-harp-base](https://github.com/jakemhiller/jh-harp-base) and @emilybrick’s [gh-pages](https://github.com/emilybrick/prototypes/tree/gh-pages)._

***

# Usage Instructions
### Adding and Editing
Source files are in `./_harp/public`, and get compiled up two levels to the root. (This is a requirement for publishing to Github Pages, but is a bit confusing.)

To update Solid, you can copy the `./lib` files from that project into `./_harp/public/css`. (Omit `solid-specific.scss`, unless you want it.)

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