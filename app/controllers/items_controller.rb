class ItemsController < ApplicationController
  def create
    @box = Box.find(params[:box_id])
    @item = @box.items.new(item_params)
    if @item.save
      redirect_to box_path(@box)
    end
  end

  def search
    @items = Item.search(params[:query])
  end

  private

  def item_params
    params.require(:item).permit(:name)
  end

end
