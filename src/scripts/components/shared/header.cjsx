React = require('react')
mui   = require('material-ui')

ThemeManager = new (mui.Styles.ThemeManager)
AppBar       = mui.AppBar
LeftNav      = mui.LeftNav

module.exports = React.createClass
  displayName: 'AppBar'
  childContextTypes: muiTheme: React.PropTypes.object
  menuItems: [
    { route: '/', text: 'Models' }
  ]

  getChildContext: ->
    muiTheme: ThemeManager.getCurrentTheme()

  render: ->
    <div>
      <LeftNav
        menuItems={@menuItems}
        docked={false}
        ref="leftNav"/>
      <AppBar
        title="ApiDoc"
        iconClassNameRight="muidocs-icon-navigation-expand-more"
        onLeftIconButtonTouchTap={@handleLeftIconClick}/>
    </div>

  handleLeftIconClick: ->
    @refs.leftNav.toggle()
