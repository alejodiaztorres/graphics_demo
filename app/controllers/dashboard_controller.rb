class DashboardController < ApplicationController
  def index
    @sales_grouped_by_month = Sale.group_by_month(:date_time).order(date_time: :asc).sum(:amount)

    @sales_grouped_by_beer = Sale.group(:beer).sum(:amount)
  end


end
