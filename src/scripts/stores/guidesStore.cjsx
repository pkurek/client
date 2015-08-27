Model      = require('backbone-model').Model
Collection = require('backbone-collection').Collection
Dispatcher = require('../dispatcher')

class Guide extends Model
  idAttribute: '_id'

class GuidesStore extends Collection
  model: Guide
  url: '/api/guides/current'

  initialize: ->
    @dispatchToken = Dispatcher.register(@dispatchCallback)

  dispatchCallback: (payload) =>
    switch payload.command
      when "blueprints#create"
        @add(title: "example")
        @trigger "change"

module.exports = new GuidesStore
