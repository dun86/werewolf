class MessagesController < ApplicationController
  before_action :authenticate_user!

  def create
    @message = current_user.messages.build(message_params)
    if @message.save
      redirect_to game_path(@message.game)
    else
      flash[:error] = "メッセージの送信に失敗しました。"
      redirect_to game_path(@message.game)
    end
  end

  private

  def message_params
    params.require(:message).permit(:content, :game_id)
  end
end
