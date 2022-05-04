class MessagesController < ApplicationController
  def index
   @massage = Massage.new
   @room = Room.find(paramas[:room_id]) 
  end

  def create
    @room= Room.find(:room_id)
    @massage = @room.messages.new(message_params)
    if @message.save
 redirect_to_room_massage_path(@room)
 else
  render :index
 end
    end

 private

 def message_params
  params.require(:message).permit.maege(user_id: current_user.id)
 end
end

