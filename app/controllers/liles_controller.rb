class FarvoritesController < ApplicationController
  before_aciton :set_recipe
  
  def create
    @like = Like.create(user_id: current_user.id, recipe_id: @recipe.id)
  end

  def destroy
    @like = like.find_by(user_id: current_user.id, recipe_id: @recipe.id)
    @like = destroy
  end


  private
  def set_recipe
    @recipe = Recipe.find(params[:recipe_id])
  end
end