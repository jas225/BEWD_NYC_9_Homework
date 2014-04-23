require 'rest-client'
require 'json'

class Reddit
  attr_reader :endpoint_url

  BASE_URL = 'http://reddit.com'

  def initialize(subreddit)
    @endpoint_url = "#{BASE_URL}/r/#{subreddit}.json"
  end

  def get
    response = RestClient.get(endpoint_url)
    @parsed_response = JSON.parse(response)
  end

  def parsed_response
    @parsed_response['data']['children'].map do |post|
      { title: post['data']['title'], author: post['data']['author'], url: post['data']['url'] }
    end
  end
end