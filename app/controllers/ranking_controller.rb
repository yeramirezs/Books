class RankingController < ApplicationController


  def ranking
    @@id  = params[:id] # retrieve book ID from URI route
    @book = Book.find(@@id) # look up a book by unique ID

  end

  def enviarRanking

    if !params[:puntaje]
      #Validacion de parametros nulos
      flash[:notice] = "El puntaje no puede ser vacio"
    else
      #Inicializacion de parametros
      puntaje = params[:puntaje]

      if  ! (/^[\d]+(\.[\d]+){0,1}$/ =~ puntaje)
        #Validacion del numero
        flash[:notice] = "Puntaje no es un numero"
      else
        if puntaje.to_i < 0 || puntaje.to_i > 5
          #Validacion del numero
          flash[:notice] = "El puntaje debe ser un valor entre 0 y 5"
        else
           #Puntaje valido
          @book = Book.find(@@id) # look up a book by unique ID
          @book.update_attributes( :numberRanking => @book.numberRanking+ 1,
                                   :totalRanking  =>  @book.totalRanking + puntaje.to_i)
          flash[:notice] = "Votacion adicionada"

        end
      end
    end
    redirect_to  :controller => "result",:action => "result", :busqueda => @book.name
  end




end