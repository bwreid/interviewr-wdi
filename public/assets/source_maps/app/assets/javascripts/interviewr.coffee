jQuery ->
  $('form').on 'click', '.remove_fields', (event) ->
    $(this).prev('input[type=hidden]').val('1')
    $(this).closest('.fields').hide()
    event.preventDefault()

  $('form').on 'click', '.add_fields', (event) ->
    time = new Date().getTime()
    regexp = new RegExp($(this).data('id'), 'g')
    $(this).before($(this).data('fields').replace(regexp, time))
    event.preventDefault()

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
