class Api::V1::CharitiesController < ApplicationController
  def index
  render json: Charity.all

  end
end
