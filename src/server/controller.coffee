expressApp = require('./index').expressApp
config = require './config'

## SERVER ONLY ROUTES ##

module.exports.status = (req, res) ->
  obj =
    status: 'up'
    easteregg: false
  if req.query.easteregg
    obj.easteregg = true
    obj.hello = 'World'
  res.json obj

module.exports.all = (req, res) ->
  res.send 404, '404 Page not found'
