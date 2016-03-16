class Make < ActiveRecord::Base
 	URL_MAKE = "http://www.webmotors.com.br/carro/marcas"
 	
	def self.getAllMakeDesc
		return Make.all.order(name: :asc)
    end 
end
