require 'json'

=begin  
  All Possible Responses which should be returned from aproperties query
=end
class Response
  
  def initialize(current_version='', next_version='', requires_upgrade=false)
    @current_version = current_version
    @next_version = next_version
    @requires_upgrade = requires_upgrade
  end

  def self.error()
    @current_version = '0'
    @next_version = '0'
    @requires_upgrade = false
  end

  def json()
    {'current' => @current_version, 'next' => @next_version, 'requires_upgrade' => @requires_upgrade.to_s}.to_json
  end
  
end 

