class MessagesController < ApplicationController
  def index
  	@messages = Message.all
  end

  def create
    @channel = Channel.find(params[:channel])
  	msg = Message.new
  	msg.text = params[:text]
  	msg.user_id = current_user.id
    msg.channel = @channel
  	msg.save!
  	redirect_to channel_show_url(channel_id: @channel.id)
  end


end
