program = require 'derby/node_modules/commander'

## CLI ##

program
  .version('0.1')

program.parse process.argv
