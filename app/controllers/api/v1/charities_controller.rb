class Api::V1::CharitiesController < ApplicationController
  def index
  render json: Charity.all
  end

  def show
  charity = Charity.find_by(id: params[:id])
  render json: charity
  end


end
