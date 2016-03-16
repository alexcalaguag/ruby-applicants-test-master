class Make < ActiveRecord::Base
 	URL_MAKER = "http://www.webmotors.com.br/carro/marcas"
 	
	def self.getAllMakerDesc
		return Make.all.order(name: :asc)
    end 
end
