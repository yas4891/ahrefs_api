require "ahrefs_api/version"
require 'ahrefs_api/base'
require 'ahrefs_api/backlinks'

class Hash
  # very naive implementation of to_query
  def to_query
    map { |key, value| "#{key}=#{value}" }.join('&')
  end
end
