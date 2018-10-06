class ChannelsController < ApplicationController
  def index
  end

  def new
  end

  def create
    channel = Channel.new(channel_params)
    channel.save!
    redirect_to channels_url
  end

  def show
    @channel = Channel.find(params[:channel_id])
    @messages = @channel.messages
  end

  def join
    @channel = Channel.find(params[:channel_id])
    if !current_user.nil?
      @channel.users << current_user
      redirect_to channel_show_url(channel_id: @channel.id)
    end
  end

  private

  def channel_params
    params.require(:channel).permit(:name, :purpose)
  end

end
