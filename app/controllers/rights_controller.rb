class RightsController < ApplicationController
  def index
    @rights = Right.all
    @countries = Countries.all
  end

  def new
    @right = Right.new
  end

  def create
    @right = Right.new(right_params)

    respond_to do |format|
      if @right.save
        format.html { redirect_to movie_url(@right), notice: "Right was successfully created." }
      else
        format.html { render :new, status: :unprocessable_entity }
      end
    end
  end

  private
  def right_params
    params.permit(right: [ :country_id, :start, :finish ])
  end
end
