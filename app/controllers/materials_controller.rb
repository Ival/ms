class MaterialsController < ApplicationController
  def index
  	@materials = Material.all
  end

  def create
 		@material = Material.new params[:material] 	
 		if @material.save
 			redirect_to @material, notice: 'Material was successfully created.'
 		else
 			render action: "new"
 		end
  end
end
