App.vote = App.cable.subscriptions.create("VoteChannel", {
  connected: function() {
  },

  disconnected: function() {
  },

  received: function(data) {
    var power =  data['power'];
    var count = parseInt($('.' + power + ' .count').text());
    if (data['method'] == 'add') {
      $('.results ' + '.' + power + ' .count .progress-bar').html(count + 1);
    } else if (data['method'] == 'subtract') {
      $('.results ' + '.' + power + ' .count .progress-bar').html(count - 1);
    }

    var total_count = 0;
    $('.count .progress-bar').each( function(){
      total_count = total_count + parseInt($(this).text());
    })

    $('.count .progress-bar').each( function(){
      $(this).css('width',parseInt($(this).text()) / total_count * 100 + '%');
    })
  },

  voted: function(power) {
    // this will create a callback to the action cable on the server side
    // meaning that `app/channels/vote_channel.rb` voted function will run
    return this.perform('voted', { power: power });
  },

  reduce: function(power) {
    return this.perform('reduce', { power: power });
  }
});



