flux    = require('flux-react')
actions = require('../actions')

CurrentGuideStore = flux.createStore(
  currentGuide: {}
  actions: [
    actions.findGuide
  ]

  exports:
    getGuide: ->
      @currentGuide
    findGuide: (name, region) ->
      @findGuide(name, region)

  findGuide: (name, region) ->
    console.log "#{name} - #{region}"
    @emit 'guides.find'
)
module.exports = CurrentGuideStore
