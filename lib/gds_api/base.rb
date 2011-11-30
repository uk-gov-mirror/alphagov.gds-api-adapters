require_relative 'json_utils'

class GdsApi::Base
  include GdsApi::JsonUtils

  def initialize(endpoint)
    self.endpoint = endpoint
  end
  
  def url_for_slug(slug,options={})
    base = "#{base_url}/#{slug}.json"
    params = options.map { |k,v| "#{k}=#{v}" }
    base = base + "?#{params.join("&")}" unless options.empty? 
    base
  end
  
  private
    attr_accessor :endpoint
end