window.app =
  ready: ->
    $('#login').on('click', 'a[data-clear-form]', app.clear_form)
    app.get_scores()

  clear_form: (e) ->
    e.preventDefault()
    $('#login').slideUp()
    window.setTimeout(app.clear_wait, 1000)

  clear_wait: ->
    $('#login').empty()

  get_scores: ->
    if($("#score_chart").length != 0)
      eid = $("#eid").text()
      settings =
        datatype: "json"
        type: "get"
        url: "/exams/#{eid}/scores"
      $.ajax(settings).done(app.show_chart)

  show_chart: (message)->
    app.mess = message
    console.log(message)
    new Morris.Line
      element: "score_chart"
      data: app.mess
      xkey: 'datetime'
      ykeys: ['score']
      labels:['name']
      ymin: "auto"
      ymax: "auto"




$(document).ready(app.ready)
