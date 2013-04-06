jQuery ->
  $('form').on 'click', '.remove_fields', (event) ->
    $(this).prev('input[type=hidden]').val('1')
    $(this).closest('.fields').slideUp()
    event.preventDefault()

  $('form').on 'click', '.add_fields', (event) ->
    time = new Date().getTime()
    regexp = new RegExp($(this).data('id'), 'g')
    $(this).before($(this).data('fields').replace(regexp, time))
    event.preventDefault()

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


    $('#edit_user').on('click', 'a[data-clear-form]', app.clear_longform)
    app.get_user_data()

  clear_form: (e) ->
    e.preventDefault()
    $('#login').slideUp()
    window.setTimeout(app.clear_wait, 1000)

  clear_wait: ->
    $('#login').empty()

  clear_longform: (e) ->
    e.preventDefault()
    $('#edit_user').foundation('reveal', 'close')
    window.setTimeout(app.clear_wait2, 1000)

  clear_wait2: ->
    $('#edit_user').empty()

  get_user_data: ->
    if($("#user_info").length != 0)
      user_id = $('#user_info').data('user_id');
      settings =
          datatype: "json"
          type: "get"
          url: "/users/#{user_id}/scores"
        $.ajax(settings).done(app.show_user_chart)

  show_user_chart: (msg) ->
    debugger
    new Morris.Bar
      element: "user_chart"
      data: msg
      xkey: 'datetime'
      ykeys: ['score']
      labels: ['exam_name']

$(document).ready(app.ready)
