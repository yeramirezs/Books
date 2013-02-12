class RankingControllerController < ApplicationController
  	def ranking
		
		end 
		
		def enviarRanking
		
		if(!params[:puntaje])
	  		#Validacion de parametros nulos
	  		flash[:notice] = "El puntaje no puede ser vacio"
			else
			#Inicializacion de parametros
		  	puntaje = params[:puntaje]
				if(puntaje.to_i<=0 || (/^[\d]+(\.[\d]+){0,1}$/ === puntaje) == false)
					#Validacion del numero
					flash[:notice] = "Puntaje negativo o no es un numero"
				else
					if((puntaje === (0..5)) == false)
					#Validacion del numero
					flash[:notice] = "El puntaje debe ser un valor entre 0 y 5"
				else
				end
				end
			end
		
			redirect_to :ranking
		end
end

