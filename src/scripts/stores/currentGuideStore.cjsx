flux    = require('flux-react')
actions = require('../actions')
jquery  = require('jquery')

CurrentGuideStore = flux.createStore(
  currentGuide: {}
  request: jquery.ajax
  errors: {}
  actions: [
    actions.findGuide
  ]

  exports:
    getGuide: ->
      @currentGuide

    getErrors: ->
      @errors

    findGuide: (name, region) ->
      @findGuide(name, region)

  findGuide: (name, region) ->
    @request(
      url: "http://localhost:3000/api/guides/current"
      data:
        name: name
        region: region
        api_version: "0.0.1"
      success: (response) =>
        @currentGuide = response.current_game_guides
        @emit('guides.find')
      error: (error) =>
        @errors = error.responseJSON.errors || {}
        @emit('guides.error')
    )
)
module.exports = CurrentGuideStore
