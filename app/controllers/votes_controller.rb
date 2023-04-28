class VotesController < ApplicationController
  before_action :set_game, only: [:create]
  before_action :set_vote, only: [:destroy]

  def create
    @vote = @game.votes.new(vote_params)

    if @vote.save
      redirect_to @game, notice: '投票が完了しました。'
    else
      redirect_to @game, alert: '投票に失敗しました。'
    end
  end

  def destroy
    @vote.destroy
    redirect_to @vote.game, notice: '投票を削除しました。'
  end

  private

  def set_game
    @game = Game.find(params[:game_id])
  end

  def set_vote
    @vote = Vote.find(params[:id])
  end

  def vote_params
    params.require(:vote).permit(:voter_id, :target_id)
  end
end
