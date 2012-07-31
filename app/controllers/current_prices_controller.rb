class CurrentPricesController < ApplicationController
  # GET /current_prices
  # GET /current_prices.json
  def index
    @current_prices = CurrentPrice.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @current_prices }
    end
  end

  # GET /current_prices/1
  # GET /current_prices/1.json
  def show
    @current_price = CurrentPrice.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @current_price }
    end
  end

  # GET /current_prices/new
  # GET /current_prices/new.json
  def new
    @current_price = CurrentPrice.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @current_price }
    end
  end

  # GET /current_prices/1/edit
  def edit
    @current_price = CurrentPrice.find(params[:id])
  end

  # POST /current_prices
  # POST /current_prices.json
  def create
    @current_price = CurrentPrice.new(params[:current_price])

    respond_to do |format|
      if @current_price.save
        format.html { redirect_to @current_price, :notice => 'Current price was successfully created.' }
        format.json { render :json => @current_price, :status => :created, :location => @current_price }
      else
        format.html { render :action => "new" }
        format.json { render :json => @current_price.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /current_prices/1
  # PUT /current_prices/1.json
  def update
    @current_price = CurrentPrice.find(params[:id])

    respond_to do |format|
      if @current_price.update_attributes(params[:current_price])
        format.html { redirect_to @current_price, :notice => 'Current price was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @current_price.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /current_prices/1
  # DELETE /current_prices/1.json
  def destroy
    @current_price = CurrentPrice.find(params[:id])
    @current_price.destroy

    respond_to do |format|
      format.html { redirect_to current_prices_url }
      format.json { head :no_content }
    end
  end
end
