derby = require('derby')

derby.use require('../../ui')
derby.use require('derby-auth/components')

derby.createApp module
routes = require './routes'
