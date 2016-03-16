module ModelHelper
  include DefaultHelper

  URL_MODEL = "http://www.webmotors.com.br/carro/modelos"

  def initialize_models(makeId)
    models_json = search_json_data(URL_MODEL,{'marca'=>makeId})
    populate_models(models_json , {'webmotors_id'=>makeId})
  end

  def populate_models (models_json,param)
    # Make request for Webmotors site
    make = Make.where(param)[0]
    # debugger    # debugger
    # Itera no resultado e grava os modelos que ainda não estão persistidas
    models_json.each do |json_result|
      if Model.where(name: json_result["Nome"], make_id: make.id).size == 0
        Model.create(make_id: make.id, name: json_result["Nome"])
      end
    end
  end
end