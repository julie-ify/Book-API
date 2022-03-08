module Api
  module V1
    class CategoriesController < ApplicationController
      before_action :set_category, only: :destroy

      # GET /categories
      def index
        @categories = Category.all
        render json: CategoriesRepresenter.new(@categories).as_json
      end

      # POST /category
      def create
        @category = Category.create(category_params)
        if @category.save
          render json: CategoryRepresenter.new(@category).as_json
        else
          render json: @category.errors, status: :unprocessable_entity
        end
      end

      # DELETE /category/:id
      def destroy
        @category.destroy
        head :no_content
      end

      private
      def set_category
        @category = Category.find(params[:id])
      end

      def category_params
        params.permit(:name)
      end
    end
  end
end
