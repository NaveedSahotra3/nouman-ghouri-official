class HomeController < ApplicationController
    def index
        @portfolio_items = PortfolioItem.all
    end
end