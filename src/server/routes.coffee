{ expressApp } = require './index'
## Routes

controller = require './controller'

expressApp.all '/status', controller.status
expressApp.all '*', controller.all
