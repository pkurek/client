React = require('react')
mui   = require('material-ui')

ThemeManager = new (mui.Styles.ThemeManager)
Input        = mui.TextField
Button       = mui.RaisedButton
Field        = require './field'

module.exports = React.createClass(
  displayName: 'BlueprintNew'
  childContextTypes: muiTheme: React.PropTypes.object

  getChildContext: ->
    muiTheme: ThemeManager.getCurrentTheme()

  render: ->
    <div>
      <h1> New Blueprint </h1>
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
    console.log "submitted"
)
