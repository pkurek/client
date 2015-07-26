## Install dependencies

Clone this repo and then after entering the new directory run `npm install` and `bundle install`. This will install the respective NPM and Ruby Gem dependencies.

You'll also need to have gulp installed globally to run the coffeescript gulpfile: `npm install -g gulp`

## Development
Run in the root of your directory: `npm run watch`

This will watch the src directories and build on changes and placed the built css and js files in the public directory. It'll serve everything in the /public directory at localhost:8080

Then try editing `src/scripts/hello_world.cjsx` and see your changes magically show up in your browser with *no* page reload!

# Production build
To build for production, simply run `gulp build`
