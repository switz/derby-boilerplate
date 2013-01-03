derby = require 'derby'

onServer = ->
  derby.util.isServer

onClient = ->
  !onServer()

toParam = (object) ->
  params = []
  for own key, val of object
    params.push("#{ key }=#{ val }")

  params.join('&')

# If num.length < 2, then add a leading zero
addZero = (num) ->
  return String("0" + num) if String(num).length < 2
  String num

# Remove duplicate entries of a particular field in an array of objects
removeDuplicates = (arr) ->
  hold = {}
  i = 0

  while i < arr.length
    hold[arr[i].video] = arr[i]
    i++
  arr = new Array()
  for key of hold
    arr.push hold[key]
  arr

module.exports =
  {
    onServer
    onClient
    toParam
    addZero
    removeDuplicates
  }
