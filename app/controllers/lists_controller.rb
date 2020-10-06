class ListsController < ApplicationController
  # before_action :authenticate_user!

  # def index
  # end

   def show
    @list = List.find(params[:id])
   end

  def new
    @list = List.new
  end

  def create
    @list = List.new(list_params)
    if @list.save
      redirect_to list_path(@list)
    else
      render 'new'
    end
  end

  private
    def list_params
      params.require(:list).permit(:list_comment,:list_name)
    end
end
