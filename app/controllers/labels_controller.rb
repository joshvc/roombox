class LabelsController < ApplicationController
  def index
    @boxes = Box.order('id')
    render layout: false
  end
end
