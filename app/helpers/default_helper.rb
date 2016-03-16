module DefaultHelper
  #Search informacion via url returning it in json format	
  def search_json_data (url,param={})
      uri = URI(url)
      response = Net::HTTP.post_form(uri, param)
      return JSON.parse response.body
  end
end