class SectionsController < ApplicationController
  before_action :authenticate_user!
  before_action :correct_user, only: [:edit, :update, :destroy]
  before_action :set_section, only: [:destroy, :edit, :update]

  def new
    @section = current_user.sections.build
  end

  def create
    @section = current_user.sections.build(section_params)

    if @section.save
      flash[:success] = "Your section has been created!"
      redirect_to current_user
    else
      flash[:alert] = "Your new section wasnt created"
      render :new
    end
  end

  def destroy
    @section.destroy
    flash[:success] = "Section was deleted"
    redirect_to current_user 
  end

  def edit
  end

  def update
    @section.update(section_params)
    redirect_to current_user
  end


  private

    def set_section
      @section = Section.find(params[:id])
    end

    def correct_user
      set_section
      unless current_user == @section.user
        flash[:alert] = "You don't have access"
        redirect_to root_path
      end
    end

    def section_params
      params.require(:section).permit(:name)
    end
end
