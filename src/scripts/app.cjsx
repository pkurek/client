React      = require 'react'
Link       = require('react-router').Link
HelloWorld = require './hello_world'
StyleGuide = require './styleguide'

# Provides global navigation for app e.g. the "Hello | Styleguide" at the top.
module.exports = React.createClass
  displayName: 'HelloWorld'
  render: ->
    switch @props.location.pathname
      when ''
        Child = HelloWorld
      when '/styleguide'
        Child = StyleGuide
      else
        Child = HelloWorld

    <div>
      <header><Link to="/">Hello</Link> | <Link to="/styleguide">Styleguide</Link></header>
      <Child />
    </div>

  child: ->
    @props.route.component
