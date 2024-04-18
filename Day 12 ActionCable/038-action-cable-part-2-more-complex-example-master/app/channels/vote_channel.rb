# Be sure to restart your server when you modify this file. Action Cable runs in a loop that does not support auto reloading.
class VoteChannel < ApplicationCable::Channel
  def subscribed
    stream_from "vote"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end

  def voted(data)
    ActionCable.server.broadcast 'vote', power: data['power'], method: 'add'
  end

  def reduce(data)
    ActionCable.server.broadcast 'vote', power: data['power'], method: 'subtract'
  end
end
