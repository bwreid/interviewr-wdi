window.app =
  ready: ->
    $('#login').on('click', 'a[data-clear-form]', app.clear_form)

  clear_form: (e) ->
    e.preventDefault()
    $('#login').slideUp()
    window.setTimeout(app.clear_wait, 1000)

  clear_wait: ->
    $('#login').empty()

$(document).ready(app.ready)
