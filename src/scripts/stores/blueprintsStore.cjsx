Model      = require('backbone-model').Model
Collection = require('backbone-collection').Collection
Dispatcher = require('../dispatcher')

class Blueprint extends Model
  idAttribute: '_id'

class BlueprintsStore extends Collection
  model: Blueprint
  url: '/api/blueprints'

  initialize: ->
    @dispatchToken = Dispatcher.register(@dispatchCallback)

  dispatchCallback: (payload) =>
    switch payload.command
      when "blueprints#create"
        @add(title: "example")
        @trigger "change"

module.exports = new BlueprintsStore
