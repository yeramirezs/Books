class SearchController < ApplicationController

  def search
  end

  def buscar
  	busqueda = params[:busqueda]
  	@books = Book.search(busqueda)
  	flash[:notice] = @books
  	redirect_to :root
  end
end
