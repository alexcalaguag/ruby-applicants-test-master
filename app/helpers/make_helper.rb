module MakeHelper
  include DefaultHelper
  
  def initialize_make
    populate_make(search_json_data (Make::URL_MAKE))
  end
  private
  def populate_make (make_json)
     make_json.each do |json_result|
      if json_result["Nome"].length !=0 && Make.where(name: json_result["Nome"]).size == 0
           Make.create(webmotors_id: json_result["Id"], name: json_result["Nome"])
      end
     end 
  end
end

