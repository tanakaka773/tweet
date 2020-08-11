class RemarksController < ApplicationController
  before_action :set_remark, only: [:edit, :show]
  before_action :move_to_index, except: [:index, :show]

  def index
    @remarks = Remark.all
  end

  def new
    @remark = Remark.new
  end

  def create
    Remark.create(remark_params)
  end

  def destroy
    remark = Remark.find(params[:id])
    remark.destroy
  end

  def edit
  end

  def update
    remark = Remark.find(params[:id])
    remark.update(remark_params)
  end

  def show
  end

  private
  def remark_params
    params.require(:remark).permit(:name, :image, :text)
  end

  def set_remark
    @remark = Remark.find(params[:id])
  end

  def move_to_index
    redirect_to action: :index unless user_signed_in?
  end

end
