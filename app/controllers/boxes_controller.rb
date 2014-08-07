class BoxesController < ApplicationController
  def new
    @room = Room.find(params[:room_id])
    @box = @room.boxes.create
    redirect_to room_path(@room)
  end

  def show
    @box = Box.includes(:items).find(params[:id])
    @item = @box.items.new
  end

  def lookup
    @box = Box.lookup(params[:box])
  end

  private
end
