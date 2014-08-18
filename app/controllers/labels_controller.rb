class LabelsController < ApplicationController
  http_basic_authenticate_with name: Rails.application.secrets.http_basic_username,
    password: Rails.application.secrets.http_basic_password

  def index
    if params[:row].empty?
      @empty_boxes = 0
    else
      @empty_boxes = (params[:row].to_i - 1) * 2
    end
    params[:to].empty? ? to = Box.last.id : to = params[:to].to_i
    params[:from].empty? ? from = 1 : from = params[:from].to_i

    @boxes = Box.where(id: from..to).to_a
    @first_boxes = @boxes.shift(10 - @empty_boxes)
  end
end
