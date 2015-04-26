class GamesController < ApplicationController
  before_action :initialize_game, only: [:new, :create]
  before_action :load_game, only: [:edit, :update, :destroy]

  def index
    @games = Game.all
  end

  def create
    if @game.update_attributes(game_params)
      redirect_to games_path
    else
      render 'new'
    end
  end

  def update
    if @game.update_attributes(game_params)
      redirect_to games_path
    else
      render 'edit'
    end
  end

  def destroy
    @game.destroy
    redirect_to games_path
  end

  private

  def initialize_game
    @game = Game.new
  end

  def load_game
    @game = Game.find(params[:id])
  end

  def game_params
    params.require(:game).permit(
      :name,
      scores_attributes: [:id, :value, :player_id, :_destroy]
    )
  end
end
