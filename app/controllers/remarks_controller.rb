class RemarksController < ApplicationController

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
    @remark = Remark.find(params[:id])
  end

  def update
    remark = Remark.find(params[:id])
    remark.update(remark_params)
  end

  private
  def remark_params
    params.require(:remark).permit(:name, :image, :text)
  end

end
