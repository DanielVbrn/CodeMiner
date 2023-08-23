class RacersController < ApplicationController
  def new 
     @racer = Racer.new
  end
  
  def create
     @racer = Racer.new(racer_params)
  end
	
  if @racer.save
     redirect_to @racer, notice: "Racer was succesfully created."
	
  else
     render :new
  end

  private
  
  def racer_params
     params.require( :racer ).permit( :name, :born_at, :image_url )
  end
end
