class PublicController < ApplicationController
  def index
  	
  	if params["other"] 
  		@elements = Hash[
  			Dir.entries("#{Rails.public_path}/#{params["other"]}").map.with_index do |d, i|
  				[
  					i = d,
  					d = File.directory?("public/#{params["other"]}/#{d}") ? "public/#{params["other"]}/#{d}" : false 
  				]
  			end
  		]
  		@elements.delete(".")
  		
  	else
  		@elements = Hash[
  			Dir.entries(Rails.public_path).map.with_index do |d, i|
  				[
  					i = d,
  					d = File.directory?("public/#{d}") ? "public/#{d}" : false
  				]
  			end
  		]
  		@elements.delete_if { |key| key=="." or key==".."}
  		
  	end
  
  end
end
