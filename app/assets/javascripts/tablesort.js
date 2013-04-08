/* Define two custom functions (asc and desc) for string sorting */
jQuery.fn.dataTableExt.oSort['string-case-asc']  = function(x,y) {
  return ((x < y) ? -1 : ((x > y) ?  1 : 0));
};

jQuery.fn.dataTableExt.oSort['string-case-desc'] = function(x,y) {
  return ((x < y) ?  1 : ((x > y) ? -1 : 0));
};

$(document).ready(function() {
  /* Build the DataTable with third column using our custom sort functions */
  if($("#exam_table").length != 0)
  {
    $('#exam_table').dataTable( {
      "aaSorting": [ [0,'asc'], [1,'asc'] ],
      "aoColumns": [
        null,
        null,
        { "sType": 'string-case' },
        null,
        null
      ]
    } );
  }
} );