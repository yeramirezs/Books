class ResultController < ApplicationController
  def result
    puts ">>> En Result#result"
  	busqueda = params[:busqueda]
  	@books = Book.search(busqueda)
  end
end
