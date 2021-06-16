class CasesController < ApplicationController
  before_action :set_prototype, except: [:index, :new, :create]
  before_action :authenticate_user!, except: [:index, :show]

  def index
    @cases = Case.includes(:user)
  end

  def new
    @case = Case.new
  end
  
  def create
    @case = Case.new(case_params)
   if @case.save
      redirect_to root_path
    else
      render :new
   end
  end

  private
  def case_params
    params.require(:case).permit(:title,:explanation,:category_id,:image).merge(user_id: current_user.id)
  
  end 

end
