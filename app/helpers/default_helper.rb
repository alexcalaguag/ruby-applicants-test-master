module DefaultHelper

  # Find information via http returned in JSON format	

  def search_json_data (url,param={})
      uri = URI(url)
      response = Net::HTTP.post_form(uri, param)
      return JSON.parse response.body
  end
end