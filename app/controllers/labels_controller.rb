class LabelsController < ApplicationController
  http_basic_authenticate_with name: Rails.application.secrets.http_basic_username,
    password: Rails.application.secrets.http_basic_password

  def index
    @empty_boxes = empty_boxes(params)
    @boxes = Box.where(id: first_box(params)..last_box(params)).to_a
    @first_boxes = @boxes.shift(10 - @empty_boxes)
  end

private
  def first_box(params)
    params[:from].empty? ? from = 1 : from = params[:from].to_i
  end

  def last_box(params)
    params[:to].empty? ? to = Box.last.id : to = params[:to].to_i
  end

  def empty_boxes(params)
    if params[:row].empty?
      0
    else
      (params[:row].to_i - 1) * 2
    end
  end

end
