class ItemsController < ApplicationController
  def index
    @user = User.find(params[:user_id])
    @items = @user.items
  end

  def new
    @item = Item.new
  end

  def create
    @item = Item.new(item_params)
    if @item.save
      flash[:success] = "You have added the To Do to your list."
      redirect_to @item
    else
      render 'new'
    end
  end

  def edit
  end
private

def item_params
  params.require(:item).permit(:name)
end

end
