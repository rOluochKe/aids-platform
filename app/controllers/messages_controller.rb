class MessagesController < ApplicationController
  # before_action :set_message, only: [:show, :update, :destroy]

  def index
    @messages = Message.order('created_at ASC')
    render json: @messages
  end

  # def show
  #   render json: @message
  # end

  def create
    @message = current_user.messages.build(message_params)

    if @message.save
      render json: @message
    else
      render json: @message.errors, status: :unprocessable_entity
    end
  end

  # def update
  #   @message = current_user.messages.find(params[:id])

  #   if @message.update(message_params)
  #     render json: @message
  #   else
  #     render json: @message.errors, status: :unprocessable_entity
  #   end
  # end

  # def destroy
  #   @message.destroy
  # end

  private

  def message_params
    params.require(:message).permit(:body, :user_id, :volunteer_id)
  end

  # def set_message
  #   @message = Message.find(params[:id])
  # end
end
