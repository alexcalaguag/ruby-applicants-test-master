class Model < ActiveRecord::Base
	URL_MODEL = "http://www.webmotors.com.br/carro/modelos"

	def self.getModelsByMakeId(webmotorsId) 
		make = Make.where(webmotors_id: webmotorsId)[0] 
	    return Model.where(make_id: make.id).order(name: :asc)
    end 
end
