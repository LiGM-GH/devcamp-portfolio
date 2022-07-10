class PortfoliosController < ApplicationController
  def index
    @portfolio_items = Portfolio.all
  end

  def new
    @portfolio_item = Portfolio.new
  end

  def create
    puts "Params[portfolio]: #{params[:portfolio]}"
    @portfolio_item = Portfolio.new(params[:portfolio].permit(:title, :subtitle, :body))
    if @portfolio_item.save
      redirect_to portfolios_path, notice: 'Portfolio successfully created'
    else
      render 'new', notice: 'Something went wrong'
    end
  end
end
