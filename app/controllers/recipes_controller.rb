class RecipesController < ApplicationController
    before_action :authorize

    def show
      recipe = Recipe.find(params[:id])
      render json: recipe
    end
  
    def index
        recipes = Recipe.includes(:user).all
        render json: recipes.to_json(include: { user: { only: [:username, :image_url, :bio] } })
      end
      
      def create
        recipe = Recipe.new(recipe_params)
        recipe.user_id = session[:user_id]
      
        if recipe.save
          render json: recipe_with_user(recipe), status: :created
        else
          render json: { errors: recipe.errors.full_messages }, status: :unprocessable_entity
        end
      end
      
  

  
    private
  
    def authorize
        unless session.include?(:user_id)
          render json: { errors: ['Not authorized'] }, status: :unauthorized
        end
      end
      
      def recipe_params
        params.permit(:recipe, :title, :instructions, :minutes_to_complete)
      end

      def recipe_with_user(recipe)
        recipe.as_json(include: { user: { only: [:username, :image_url, :bio] } })
      end

  end