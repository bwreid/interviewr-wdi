window.app =
  ready: ->
    $('#login').on('click', 'a[data-clear-form]', app.clear_form)
    $('body').on('keyup', '#search', app.get_search_results)

  get_search_results: (e) ->
    query = $('#search').val()
    settings =
      dataType: 'script'
      type: 'get'
      url: "/search?query=#{query}"
    $.ajax(settings)


  clear_form: (e) ->
    e.preventDefault()
    $('#login').slideUp()
    window.setTimeout(app.clear_wait, 1000)

  clear_wait: ->
    $('#login').empty()

$(document).ready(app.ready)