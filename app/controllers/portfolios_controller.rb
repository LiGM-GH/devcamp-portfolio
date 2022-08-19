# frozen_string_literal: true

##
# DB entry point for Portfolios
class PortfoliosController < ApplicationController
  def index
    @portfolio_items = Portfolio.all
  end

  def angular
    @angular = Portfolio.angular
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

  def edit
    @portfolio_item = Portfolio.find(params[:id])
  end

  def update
    @portfolio_item = Portfolio.find(params[:id])

    respond_to do |format|
      if @portfolio_item.update(params.require(:portfolio).permit(:title, :subtitle, :body))
        format.html { uedirect_to portfolios_path, notice: 'Record was successfully updated.' }
        format.json { render :show, status: :ok, location: @blog }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @blog.errors, status: :unprocessable_entity }
      end
    end
  end

  def show
    @portfolio_item = Portfolio.find(params[:id])
  end

  def destroy
    @portfolio_item = Portfolio.find(params[:id])
    @portfolio_item.destroy

    respond_to do |format|
      format.html do
        redirect_to portfolios_path,
                    notice: 'Record was successfully destroyed.'
      end
    end
  end
end
