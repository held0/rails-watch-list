class ListsController < ApplicationController
  def index
    @lists = List.all
  end

  def create
    @list = List.new(list_params)
    if @list.save
      redirect_to list_path(@list)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def new
    @list = List.new
  end

  def show
    @list = List.find(params[:id])
  end

  private

  def list_params
    params.require(:list).permit(:name)
  end
end

def accum(string)
  # TODO
  accum = ""
  string.split.each_with_index do |letter, index|
    accum += letter.upcase
    index.times { accum += letter }
    accum += "-"
  end
  new_length = accum.length - 2
  accum2 = accum[0..new_length]
end
