# CoffeeScript files used for purchasing exams.
window.exam =
  ready: ->
    $('body').on('token','.stripe-button',exam.token_generated)

  token_generated: (e, token) ->
    console.log(token)
    debugger
    $(this).parent().siblings('form').append("<input type='hidden' name='token' value='#{token.id}'>").submit()

$(document).ready(exam.ready)