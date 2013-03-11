var big_map;
$(function() {
  $('#hood_links').on('mouseover', 'li', show_map);
  $('#hood_links').mouseleave(reshow_map);
  big_map = $('#main_map');
  $('#neighborhood').tooltip({content: "Not sure where all the neighborhoods are? Click this link to find out more!"});
});

function show_map() {
  var src = $(this).children('img').attr('src');
  if($('#map').children().attr('src') != src) {
    var pic = $('<img>').attr({'src':src, 'class':'hood_pics'});
    $('#map').empty();
    $('#map').append(pic);
  }
}

function reshow_map() {
  $('#map').empty();
  $('#map').append(big_map);
}