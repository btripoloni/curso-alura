class CompaniesController < ApplicationController
	def new
		@company = Company.new
	end
  
	def create
		@company = Company.new(params[:company])

		if @company.save
			redirect_to root_path, notice: "The company has been created."
		else
			render action "new"
		end
	end
  
  def show
    @company = Company.find(params[:id])
    render json: @company, except: [:encripted_password], include: [:jobs]
  end
end