require 'httparty'
module Morpher
  INFLECTIONS_COUNT = 6

  class Inflection
    include HTTParty
    base_uri 'morpher.ru'

    def get(text)
      options = {}
      options[:query] = { s: text }

      self.class.get('/WebService.asmx/GetXml', options)
    end
  end

  def self.inflections(word)
    inflections = []

    get = Inflection.new.get(word) rescue nil

    if get.key?('error')
      inflections.fill(word, 0..INFLECTIONS_COUNT-1)
    else
      inflections = [word] + get.parsed_response['xml']['']
    end

    inflections
  end
end
