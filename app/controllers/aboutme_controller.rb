class AboutmeController < ApplicationController
  def index
    create_portfolios()
    portfolios = Portfolio.all
  end

  def create_portfolios
    create_portfolio("一天", "onedayapp", "oneday.png")
  end

  def create_portfolio(name, company, image_name)
    image_path = #"portfolio #{image_name}"
    p = Portfolio.create(name: name, company: company, image_path: image_path )
    p.save
  end
end
