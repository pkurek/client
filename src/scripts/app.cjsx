React  = require 'react'
AppBar = require './components/shared/header'

injectTapEventPlugin = require("react-tap-event-plugin")
injectTapEventPlugin()

module.exports = React.createClass
  displayName: 'App'
  render: ->
    <div>
      <AppBar />
      <div id="container">
        {@props.children}
      </div>
    </div>
