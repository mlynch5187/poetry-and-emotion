class ToneService
  def get_tones(lines)
    response = conn.get('/instances/d0358fb7-a37c-4921-aad3-cd5cd4f788a6/v3/tone') do |f|
      f.params[:text] = lines
      f.params[:version] = '2017-09-21'
    end
    json = JSON.parse(response.body, symbolize_names: true)
    json[:document_tone][:tones][0][:tone_name]
  end

  def conn
    Faraday.new('https://api.us-south.tone-analyzer.watson.cloud.ibm.com/') do |f|
      f.basic_auth("apikey", ENV['TONE_KEY'])
    end
  end
end
