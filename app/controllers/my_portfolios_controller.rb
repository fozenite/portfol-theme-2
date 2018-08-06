class MyPortfoliosController < ApplicationController
  def index
    @portfolio_items = MyPortfolio.all
  end

  def new
    @portfolio_item = MyPortfolio.new 
  end

  def create
    @portfolio_item = MyPortfolio.new(portfolio_params)

    respond_to do |format|
      if @portfolio_item.save
        format.html { redirect_to my_portfolios_path, notice: 'Your portfolio item is now live.' }
      else
        format.html { render :new }
      end
    end
  end

  def portfolio_params
    params.require(:my_portfolio).permit(:title, :subtitle, :body)
  end

end
