class ItemsController < ApplicationController
def index
  #user = User.find(params[:user_id])
  @items = item.all
end

  def new
    @item = Item.new
  end

  def create
     @item = current_user.items.new(item_params)
     if @item.save
      flash[:success] = "You have added the To Do to your list."
      redirect_to user_session_path
    else
      render 'new'
    end
  end

  private

  def item_params
    params.require(:item).permit(:name, :user_id)
  end

end
