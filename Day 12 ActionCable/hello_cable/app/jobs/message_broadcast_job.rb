class MessageBroadcastJob < ApplicationJob
  queue_as :default

  def perform(message)
    ActionCable.server.broadcast("chat", { message: render_message(message), action: :create })
  end

  private

  def render_message(message)
    MessagesController.render(partial: 'messages/message', locals: {message: message}).squish
  end
end
