class RemarksController < ApplicationController

  def index
    @remarks = Remark.all
  end

end
