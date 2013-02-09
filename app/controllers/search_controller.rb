class SearchController < ApplicationController
  def search
  end

  def buscar
  	busqueda = params[:busqueda]
  	flash[:notice] = busqueda
  	redirect_to :root
  end
end
