class PortfolioController < ApplicationController
    def index
        @portfolio_items = PortfolioItem.all
    end
  
end
  