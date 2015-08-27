React      = require('react')
mui        = require('material-ui')
Navigation = require('react-router').Navigation

ThemeManager = new (mui.Styles.ThemeManager)
AppBar       = mui.AppBar
LeftNav      = mui.LeftNav

module.exports = React.createClass
  displayName: 'AppBar'
  mixins: [Navigation]
  childContextTypes: muiTheme: React.PropTypes.object
  menuItems: [
    { route: '/', text: 'Home' },
    { route: '/', text: 'Help' },
    { route: '/', text: 'Feedback' },
  ]

  getChildContext: ->
    muiTheme: ThemeManager.getCurrentTheme()

  render: ->
    <div>
      <LeftNav
        menuItems={@menuItems}
        docked={false}
        onChange={@redirect}
        ref="leftNav"/>
      <AppBar
        title="LolSumo"
        iconClassNameRight="muidocs-icon-navigation-expand-more"
        onLeftIconButtonTouchTap={@handleLeftIconClick}/>
    </div>

  handleLeftIconClick: ->
    @refs.leftNav.toggle()

  redirect: (event, index, element) ->
    @transitionTo(element.route)
