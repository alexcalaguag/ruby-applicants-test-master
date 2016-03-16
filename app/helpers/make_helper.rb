module MakeHelper
  include DefaultHelper

  URL_MAKE = "http://www.webmotors.com.br/carro/marcas"
  
  def initialize_make
    make_json = search_json_data (URL_MAKE)
    populate_make(make_json)
  end

  def populate_make (make_json)
  	 # debugger 
     # Itera no resultado e grava as marcas que ainda não estão persistidas
     make_json.each do |json_result|
      if json_result["Nome"].length !=0 && Make.where(name: json_result["Nome"]).size == 0
           Make.create(webmotors_id: json_result["Id"], name: json_result["Nome"])
      end
     end 
  end
end