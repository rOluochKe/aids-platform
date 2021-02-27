class ConversationsController < ApplicationController
  def index
    @users = User.all
    @conversations = Conversation.all
    render json: @users
    render json: @conversations
  end

  def create
    @conversation = Conversation.create!(conversation_params)
    if @conversation.save
      # @conversation = Conversation.between(params[:sender_id], params[:recipient_id]).first
      render json: @conversation
    else
      # @conversation = Conversation.create!(conversation_params)
      render json: @conversation.errors, status: :unprocessable_entity
    end
  end

  private

  def conversation_params
    params.permit(:sender_id, :recipient_id)
  end
end
