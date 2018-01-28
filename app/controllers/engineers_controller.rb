class EngineersController < ApplicationController
  def index
    @engineer = Engineer.all
  end

  def new
  end

  def create
    Engineer.create(engineer_params)
  end

  def show
    @engineer = Engineer.find(params[:id])
  end

  def edit
    @engineer = Engineer.find(params[:id])
  end

  def update
    @engineer = Engineer.find(params[:id])
    if @engineer.update(engineer_params)

    end
  end

  def destroy
  end

  private
  	def engineer_params
  		params.require(:engineer).permit(:name, :email, :card_number, :gender, on_call_works_attributes: [ :id, :worker_id, :total_hours ])
  	end	
end
