window.exam_form =
  document_ready: ->
    # $('#fee_no').is(':checked')
    $('#exam_fee_true').on('click', exam_form.show_fee_box)
    $('#exam_fee_false').on('click', exam_form.hide_fee_box)
  show_form: ->
    console.log('show form')
  show_fee_box: ->
    $('.fee_input').slideDown()
  hide_fee_box: ->
    $('.fee_input').slideUp()