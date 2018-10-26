class ItemsController < ApplicationController
  def new
    @item = Item.new
  end

  def create
    @item = Item.new
    if @item.save
      flash[:success] = "You have added the To Do to your list."
      redirect_to @item
    else
      render 'create'
    end
  end


end
