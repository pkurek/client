React = require('react')
mui   = require('material-ui')

ThemeManager = new (mui.Styles.ThemeManager)
Input        = mui.TextField
Button       = mui.RaisedButton
SelectField  = mui.SelectField

CurrentGuideStore = require '../../stores/currentGuideStore'

module.exports = React.createClass
  childContextTypes: muiTheme: React.PropTypes.object
  menuItems: [
    {text: 'Europe West', region: 'euw'}
    {text: 'Europe North & East', region: 'eune'},
  ]
  region: 'euw'

  getChildContext: ->
    muiTheme: ThemeManager.getCurrentTheme()

  componentWillMount: ->
    CurrentGuideStore.on('guides.find', @updateState)

  updateState: ->
    @setState(guide: CurrentGuideStore.getGuide())

  render: ->
    <div id='newGuide'>
      <h3>Real Time Guide</h3>
      <form onSubmit={@handleSubmit}>
        <Input
          hintText="Summoner name"
          ref="name" />
        <br />

        <SelectField
          onChange={@regionSelected}
          menuItems={@menuItems}
          ref="region" />
        <br />
        <Button
          label="GIMME A GUIDE!"
          secondary={true}
          onClick={@handleSubmit} />
        <br />
      </form>
    </div>

  regionSelected: (region) ->
    @region = region.target.value.region

  handleSubmit: (event) ->
    event.preventDefault()
    if @valid()
      CurrentGuideStore.findGuide(@refs.name.getValue(), @region)

  valid: ->
    if @refs.name.getValue()
      @refs.name.setErrorText()
      true
    else
      @refs.name.setErrorText("Summoner name plx")
      false
