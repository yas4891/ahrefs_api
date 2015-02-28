require "ahrefs_api/version"
require 'ahrefs_api/base'
require 'ahrefs_api/backlinks_new_lost'
require 'ahrefs_api/subscription_info'

class Hash
  # very naive implementation of to_query
  def to_query
    map { |key, value| "#{key}=#{value}" }.join('&')
  end
end
