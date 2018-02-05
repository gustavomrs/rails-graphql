

# /home/gustavo/Talks/Trackmob talks/rails-graphql/app/controllers/api_controller.rb

class ApiController < ApplicationController
  def index
    result = Schema.execute(params[:query])
    render json: result
  end
end
