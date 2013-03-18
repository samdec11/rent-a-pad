var big_map;
var this_map;

$(function() {
  $('#hood_links').on('mouseover', 'li', show_map);
  $('#hood_links').mouseleave(reshow_map);
  big_map = $('#main_map');
  $('#neighborhood').tooltip({content: "Not sure where all the neighborhoods are? Click this link to find out more!"});
  $('.checkboxes').each(show_this);
  $('.messages').click(hide_modal);
  $('.hood_name').on('click', toggle_checkbox);
  $('#inbox a').each(show_sender);
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

function show_this() {
  this_map = $(this).children('img').attr('src');
  var root = "<img src='" + this_map + "'>";
  $(this).tooltip({ content: root });
}

function hide_modal() {
  $('.reveal-modal').trigger('reveal:close');
}

function toggle_checkbox() {
  checkbox = $(this).siblings('input');
  checkbox.attr("checked", !checkbox.attr("checked"));
}

function show_sender() {
  var image = $(this).parent().siblings('.hide').children().first().attr('src');
  var root = "<img src='" + image + "'>";
  $(this).tooltip({ content: root });
}