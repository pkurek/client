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
    <div>
      <Input hintText="Name of your field" />
      <br />
      <Input hintText="Type of your field" />
      <br />
      <Input hintText="Sample values" />
    </div>

  handleSubmit: ->
    console.log "submitted"
)
