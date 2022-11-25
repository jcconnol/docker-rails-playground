require 'rest_client'

class ApiController < ApplicationController
    def show
        responseBody = ""
        begin
            response = RestClient.get('https://api.publicapis.org/entries', headers={})
            responseBody = response.body
        rescue => e
            responseBody = e
        end

        render json: responseBody.to_s
    end
end
  