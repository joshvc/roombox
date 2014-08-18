class RoomsController < ApplicationController
  http_basic_authenticate_with name: Rails.application.secrets.http_basic_username,
    password: Rails.application.secrets.http_basic_password,
    except: :index


  def index
    @rooms = Room.all
  end

  def show
    @room = Room.includes(:boxes).find(params[:id])
  end

  def new
    @room = Room.new
  end

  def create
    @room = Room.new(room_params)
    if @room.save
      redirect_to rooms_path, notice: "Room created successfully"
    else
      render 'new'
    end
  end

  def edit
    @room = Room.find(params[:id])
  end

  def update
    @room = Room.find(params[:id])
    if @room.update(room_params)
      redirect_to room_path(@room), notice: "Room Updated Successfully"
    end
  end

  private

  def room_params
    params.require(:room).permit(:name, :identifier, :color)
  end
end
