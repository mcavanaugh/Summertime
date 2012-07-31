class HomeController < ApplicationController
  def index
    @current_symbols = CurrentSymbol.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @current_symbols }
    end
  end
end
