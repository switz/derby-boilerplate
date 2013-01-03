{ get } = require './index'
controller = require './controller'

## ROUTES ##

get '/', controller.index
