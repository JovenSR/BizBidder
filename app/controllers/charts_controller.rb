class ChartsController < ApplicationController
  def completed_tasks
    render json: Task.group_by_day(:completed_at).count
  end
  def request_by_city
    render json:Request.group(:city).count
  end
end