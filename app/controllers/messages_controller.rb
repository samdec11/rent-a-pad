class MessagesController < ApplicationController
  def index
    @messages = @auth.received_messages
  end
  def new
    @message = Message.new
  end
  def create
    Message.create(:subject=>params[:subject],:body=>params[:body],:contact_id=>params[:contact_id],:user_id=>params[:user_id])
  end
  def destroy
    message = Message.find(params[:id])
    message.delete
    @messages = @auth.received_messages
  end
end