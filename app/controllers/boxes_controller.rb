class BoxesController < ApplicationController
  http_basic_authenticate_with name: Rails.application.secrets.http_basic_username,
    password: Rails.application.secrets.http_basic_password
    
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
