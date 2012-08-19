class HomeController < ApplicationController
  def index
    @current_symbols = CurrentSymbol.all
    set_tab :home

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @current_symbols }
    end
  end

  def about
    set_tab :about
  end

  def contact
    set_tab :contact
  end

  def help
    set_tab :help
  end
end
