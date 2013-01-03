app = require '../app'
config = require './config'
{ view, ready } = require './index'

#############
## Ready
#############

ready (model) ->
  # Exported functions are exposed as a global in the browser with the same
  # name as the module that includes Derby. They can also be bound to DOM
  # events using the "x-bind" attribute in a template.
  @stop = ->
    # Any path name that starts with an underscore is private to the current
    # client. Nothing set under a private path is synced back to the server.
    model.set '_stopped', true

  do @start = ->
    model.set '_stopped', false

  model.set '_showReconnect', true
  @connect = ->
    # Hide the reconnect link for a second after clicking it
    model.set '_showReconnect', false
    setTimeout (-> model.set '_showReconnect', true), 1000
    model.socket.socket.connect()

  @reload = -> window.location.reload()
