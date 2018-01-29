class EngineersController < ApplicationController
  def index
    @engineers = Engineer.all
  end

  def new
  end

  def create
    @engineer = Engineer.new(engineer_params)
    if @engineer.save
      if @engineer.on_call_works.blank?
        @engineer.destroy!
        redirect_to new_engineer
      end
      redirect_to @engineer
    else
      redirect_to new_engineer
    end
  end

  def show
    @engineer = Engineer.find(params[:id])
  end

  def edit
    @engineer = Engineer.find(params[:id])
  end

  def update
    @engineer = Engineer.find(params[:id])
    if @engineer.update_attributes(engineer_params)
      redirect_to engineers
    else
      redirect_to edit_engineer(@engineer)
    end
  end

  def destroy
  end

  private
  	def engineer_params
  		params.require(:engineer).permit(:name, overtimes_attributes: [ :id, :engineer_id, :day, :hours ])
  	end	
end
