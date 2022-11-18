require 'rest_client'

class ApiController < ApplicationController
    def show
        response = RestClient.get('https://api.publicapis.org/entries', headers={})
        responseBody = response.body

        render json: responseBody.to_s.to_json
         
    end
  end
  