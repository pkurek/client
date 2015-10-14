React = require('react')

CurrentGuideStore = require '../../stores/currentGuideStore'

module.exports = React.createClass
  getInitialState: ->
    guide: CurrentGuideStore.getGuide()

  render: ->
    <div id='guide'>
      <h2>Your Guide - { @currentGuide().id }</h2>
    </div>

  currentGuide: ->
    @state.guide.guides[0]
