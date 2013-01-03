derby = require 'derby'

controller =
  index: (page, model) ->
    page.render 'index'

module.exports = controller

# import ready callback
require './ready'

# import view functions
require './viewFunctions'
