module DefaultHelper

  def search_json_data (url,param={})
    #search the make
      uri = URI(url)
      # Make request for Webmotors site
      response = Net::HTTP.post_form(uri, param)
      return JSON.parse response.body
  end
end