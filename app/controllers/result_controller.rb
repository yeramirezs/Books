class ResultController < ApplicationController
  def result
  	busqueda = params[:busqueda]
  	@books = Book.search(busqueda)
  end
end
