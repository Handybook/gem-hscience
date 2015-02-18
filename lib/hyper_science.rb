require 'json'
require 'net/http'

module HyperScience
  module ClassMethods
    attr_accessor :host, :port, :enabled
  end

  class << self
    include ClassMethods

    def get_model(datasource, model)
      Model.new(self, datasource, model)
    end
  end

  class Model
    #include ClassMethods
    attr_accessor :datasource, :model, :http_client, :enabled

    def initialize(source, datasource, model)
      @datasource = datasource
      @model = model
      @http_client = Net::HTTP.new(source.host, source.port)
      @enabled = source.enabled
    end

    def calculate(id)
      return unless @enabled
      request = Net::HTTP::Post.new("/api/v2/predict/#{@datasource}?columns=#{@model}")
      request.add_field "Content-Type", "application/json"
      request.body = "{\"params\":{\"id\":\"#{id}\"}}"
      response = http_client.request(request)
      JSON.parse( response.body )["result"][0]['value']
    end

    def refit
      return unless @enabled
      request = Net::HTTP::Post.new("/api/v2/analyze/#{@datasource}?columns=#{@model}")
      request.add_field "Content-Type", "application/json"
      response = http_client.request(request)
      JSON.parse( response.body )["job"]
    end
  end
end
