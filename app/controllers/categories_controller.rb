class CategoriesController < ApplicationController
  def search
     @books = Book.where(category: params[:category])
     @name = params[:category]
  end
  
  def book_params
    params.require(:category).permit(:name)
  end
end
