require 'httparty'
require 'open-uri'
require 'cgi'

module AhrefsAPI
  class Base
    include HTTParty
    base_uri 'http://apiv2.ahrefs.com'
    debug_output $stdout
    
    attr_accessor :mode
    def initialize(api_token = ENV['AHREFS_TOKEN'])
      @mode ||= :domain
      @token = api_token
      raise "No token: please provide a valid token for the AhrefsAPI" if @token.nil?
    end
    
    
    # returns the endpoint data for the target in JSON format
    def get_json(target)
      return get_data(target) if target.is_a? Hash
      get_data(target: target)
    end
    
    protected
    # sets common & default options
    # makes the actual call to the API endpoint
    def get_data(custom_query)
      qopts = {
        token: token,
        from: from, 
        output: :json, 
        mode: mode,
        target: :'ahrefs.com'
      }.merge(custom_query)
      
      response = self.class.get('/', {query: qopts})
      
      raise "HTTP error: #{response.code}", response unless (200..299).include? response.code
      json = JSON.parse response.body
      unless json['error'].nil?
        error = json['error']
        raise "API error: #{error}" 
        
      end
      return json
    end
    
    # returns the API token
    def token
      @token
    end
    
  end
end