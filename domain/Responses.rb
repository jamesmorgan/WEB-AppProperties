require 'json'
  
module Responses
  
  class Response
    
    def initialize(current_version, next_version, requires_upgrade)
      @current_version = current_version
      @next_version = next_version
      @requires_upgrade = requires_upgrade
    end
  
    def to_json()
      { 
        "current" => @current_version, 
        "next" => @next_version, 
        "requires_upgrade" => @requires_upgrade 
      }.to_json
    end
    
    def error()
      Response.new("0", "0", false).to_json()
    end
    
  end 

end