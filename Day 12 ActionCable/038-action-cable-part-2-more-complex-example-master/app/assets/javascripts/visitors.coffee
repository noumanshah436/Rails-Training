# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

vote = ->
  clicks = new Array
  $('input[type=radio]').change ->
    clicks.push @value
    App.vote.voted @value    # calling action cable voted function of vote_channel.rb
    App.vote.reduce clicks[clicks.length - 2] #  calling action cable reduce function of vote_channel.rb

$(document).on 'turbolinks:load', vote

# var vote = function(){
#   var clicks = new Array();
#   $('input[type=radio]').change(function() {
#     clicks.push(this.value);
#     App.vote.voted(this.value);
#     App.vote.reduce(clicks[clicks.length - 2]);
#   });
# }
# $(document).on('turbolinks:load', vote)
