# CoffeeScript files used for purchasing exams.
window.exam =
  ready: ->
    $('body').on('token','stripe-button',exam.token_generated)

  token_generated: (e, token) ->
    console.log(token)

$(document).ready(exam.ready)