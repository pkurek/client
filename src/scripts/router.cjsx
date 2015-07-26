# Load css first thing. It gets injected in the <head> in a <style> element by
# the Webpack style-loader.
require '../../public/main.css'

React = require 'react'
# Assign React to Window so the Chrome React Dev Tools will work.
# window.React = React

ReactRouter = require 'react-router'
History     = require('react-router/lib/HashHistory').default
Route       = ReactRouter.Route
Router      = ReactRouter.Router

# Require route components.
App        = require './app'

React.render((
  <Router history={new History}>
    <Route path="/" component={App} >
      <Route name="hello" path="/" />
      <Route name="styleguide" path="/styleguide" />
    </Route>
  </Router>
), document.getElementById('app'))
