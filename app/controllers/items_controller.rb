class ItemsController < ApplicationController
  def create
    @item = Item.new
  end
end
