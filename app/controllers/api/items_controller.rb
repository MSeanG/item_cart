class Api::ItemsController < ApplicationController
  def index
    @items = Item.all
    render json: @items
  end

  def create
    @item = Item.create!(item_params)
    redirect_to item_path(@item)
  end

  def show
    @item = Item.find(params[:id])
    render json: @item
  end

  def update
    @item = Item.find(params[:id])
    @item.update!(item_params)
    redirect_to item_path(@item)
  end

  def destroy
    @item = Item.find(params[:id])
    @item.destroy
    redirect_to items_path
  end

  private

  def item_params
    params.require(:item).permit(:description, :image_url, :price)
  end
end
