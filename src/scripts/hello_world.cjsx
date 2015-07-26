React = require('react')
mui   = require('material-ui')

ThemeManager = new (mui.Styles.ThemeManager)
RaisedButton = mui.RaisedButton

module.exports = React.createClass(
  displayName: 'HelloWorld'
  childContextTypes: muiTheme: React.PropTypes.object

  getChildContext: ->
    { muiTheme: ThemeManager.getCurrentTheme() }

  render: ->
    <RaisedButton label='Hello World' />
)
