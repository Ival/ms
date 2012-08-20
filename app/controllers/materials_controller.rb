class MaterialsController < ApplicationController
  def index
  	@materials = Material.page(params[:page]).per(10)
  end

  def create
 		@material = Material.new params[:material] 	
 		notice_str = @material.save ? 'Material was successfully created.' : 'Material was unsuccessfully created.'
 		redirect_to Material, notice: notice_str
  end
  
  def destroy
  	@material = Material.find params[:id]
  	@material.destroy
  	
  	redirect_to materials_url
  end
end
