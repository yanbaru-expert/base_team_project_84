class MessagesController < ApplicationController
  def new
    @message = Message.new
  end

  def create
    Message.create(message_params)
  end

  def message_params
    params.require(:message).permit(:titile, :content)
  end
end
