React = require('react')
mui   = require('material-ui')

ThemeManager = new (mui.Styles.ThemeManager)
Input        = mui.TextField
Button       = mui.RaisedButton
Field        = require './field'

Dispatcher      = require '../../dispatcher'
BlueprintsStore = require '../../stores/blueprintsStore'

module.exports = React.createClass(
  displayName: 'BlueprintNew'
  childContextTypes: muiTheme: React.PropTypes.object

  getInitialState: ->
    blueprints: BlueprintsStore

  getChildContext: ->
    muiTheme: ThemeManager.getCurrentTheme()

  componentDidMount: ->
    @state.blueprints.on 'change', =>
      @setState(blueprints: BlueprintsStore)

  render: ->
    <div>
      <h1> New Blueprint {@state.blueprints.size()} </h1>
      <Input
        hintText="name of your blueprint"
        floatingLabelText="Name"/>
      <br />
      <Field />
      <Button
        label="Add"
        default={true}
        onClick={@handleSubmit} />
      <br />
      <Button
        label="Save"
        secondary={true}
        onClick={@handleSubmit} />
    </div>

  handleSubmit: ->
    Dispatcher.dispatch
      command: "blueprints#create"
)
