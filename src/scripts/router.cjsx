require '../../public/main.css'

React = require 'react'
# Assign React to Window so the Chrome React Dev Tools will work.
# window.React = React

ReactRouter = require 'react-router'
History     = require('react-router/lib/HashHistory').default
Route       = ReactRouter.Route
Router      = ReactRouter.Router
Redirect    = ReactRouter.Redirect

# Require route components.
App       = require './app'
FindGuide = require './components/guides/find'

React.render((
  <Router history={new History}>
    <Route component={App} >
      <Route name="NewGuide" path="/" component={FindGuide} />
    </Route>
  </Router>
), document.getElementById('app'))
