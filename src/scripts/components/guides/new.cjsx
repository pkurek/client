React = require('react')
mui   = require('material-ui')

ThemeManager = new (mui.Styles.ThemeManager)
Input        = mui.TextField
Button       = mui.RaisedButton
Field        = require './field'

Dispatcher      = require '../../dispatcher'
GuidesStore = require '../../stores/guidesStore'

module.exports = React.createClass
  displayName: 'GuideNew'
  childContextTypes: muiTheme: React.PropTypes.object

  fields: []
  title: ''

  getInitialState: ->
    guides: GuidesStore

  getChildContext: ->
    muiTheme: ThemeManager.getCurrentTheme()

  componentDidMount: ->
    @state.guides.on 'change', =>
      @setState(guides: GuidesStore)

  render: ->
    <div>
      <h3>Real Time Guide</h3>
      <Input
        hintText="Summoner name"
        ref="name" />
      <br />
      <Input
        hintText="Region"
        ref="region" />
      <br />
      <Button
        label="Add"
        secondary={true}
        onClick={@handleSubmit} />
      <br />
    </div>

  handleSuccess: (guide) ->
    debugger
    console.log "success"

  handleError: (errors) ->
    debugger
    console.log "success"

  handleSubmit: ->
    Dispatcher.dispatch
      command: "guide#show"
      name: @refs.name.getValue()
      region: @refs.region.getValue()
      success: @handleSuccess
      error: @handleError
