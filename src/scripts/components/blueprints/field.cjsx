React = require('react')
mui   = require('material-ui')

ThemeManager = new (mui.Styles.ThemeManager)
Input        = mui.TextField

module.exports = React.createClass(
  displayName: 'BlueprintField'
  childContextTypes: muiTheme: React.PropTypes.object

  getChildContext: ->
    muiTheme: ThemeManager.getCurrentTheme()

  render: ->
    <span>
      <Input
        hintText="Name of your field"
        floatingLabelText="Name" />
      <Input
        hintText="Type of your field"
        floatingLabelText="Type" />
      <Input
        hintText="Sample values"
        floatingLabelText="Values" />
    </span>

  handleSubmit: ->
    console.log "submitted"
)
