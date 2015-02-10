require 'httparty'
require 'open-uri'
require 'openssl'
require 'cgi'

module AhrefsAPI
  class Base
    include httparty
    base_uri 'http://apiv2.ahrefs.com/'
  end
end