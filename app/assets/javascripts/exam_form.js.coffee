window.exam_form =
  document_ready: ->
    $('#exam_form').find('a').on('click', exam_form.show_form)
    $('.exam_form_partial').on('click', '#cancel', exam_form.close_form)
    $('#exam_fee_true').on('click', exam_form.show_fee_box)
    $('#exam_fee_false').on('click', exam_form.hide_fee_box)
  show_form: (e) ->
    e.preventDefault()
    $('.exam_form_partial').slideDown()
  close_form: (e) ->
    e.preventDefault()
    $('.exam_form_partial').slideUp()
  show_fee_box: ->
    $('.fee_input').slideDown()
  hide_fee_box: ->
    $('.fee_input').slideUp()