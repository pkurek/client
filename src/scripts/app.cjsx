React      = require 'react'
Link       = require('react-router').Link
HelloWorld = require './hello_world'
AppBar     = require './components/shared/header'

injectTapEventPlugin = require("react-tap-event-plugin")
injectTapEventPlugin()

module.exports = React.createClass
  displayName: 'HelloWorld'
  render: ->
    switch @props.location.pathname
      when ''
        Child = HelloWorld
      else
        Child = HelloWorld

    <div>
      <AppBar />
      <Child />
    </div>
