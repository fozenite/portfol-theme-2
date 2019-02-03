ready = undefined

console.log 'HELLO'

ready = ->
  $('.sortable').sortable()
  return 

$(document).ready ready