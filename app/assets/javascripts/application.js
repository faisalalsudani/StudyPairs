//= require jquery
//= require bootstrap-sprockets
//= require jquery_ujs
//= require_tree .

function changeRole(event) {
  // event.preventDefault();

}

$(document).ready(function() {
  $("#student").bind('click', changeRole);
});
