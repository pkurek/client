var coffee = require('coffee-script');
var cjsx = require('coffee-react-transform');
var ReactTools = require('react-tools');

module.exports = {
  process: function(src, path) {
    // CoffeeScript files can be .coffee, .litcoffee, or .coffee.md
    if (coffee.helpers.isCoffee(path) || (path.match(/\.cjsx/))) {
      compiled_to_js = coffee.compile(cjsx(src), {'bare': true});
      compiled_to_react = ReactTools.transform(compiled_to_js)

      return compiled_to_react
    }

    return src;
  }
};
