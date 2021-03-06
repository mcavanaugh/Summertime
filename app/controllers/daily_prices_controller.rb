class DailyPricesController < ApplicationController
  # GET /daily_prices
  # GET /daily_prices.json
  def index
    #@daily_prices = DailyPrice.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @daily_prices }
    end
  end

  # GET /daily_prices/1
  # GET /daily_prices/1.json
  def show
    @daily_price = DailyPrice.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @daily_price }
    end
  end

  # GET /daily_prices/new
  # GET /daily_prices/new.json
  def new
    @daily_price = DailyPrice.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @daily_price }
    end
  end

  # GET /daily_prices/1/edit
  def edit
    @daily_price = DailyPrice.find(params[:id])
  end

  # POST /daily_prices
  # POST /daily_prices.json
  def create
    @daily_price = DailyPrice.new(params[:daily_price])

    respond_to do |format|
      if @daily_price.save
        format.html { redirect_to @daily_price, :notice => 'Daily price was successfully created.' }
        format.json { render :json => @daily_price, :status => :created, :location => @daily_price }
      else
        format.html { render :action => "new" }
        format.json { render :json => @daily_price.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /daily_prices/1
  # PUT /daily_prices/1.json
  def update
    @daily_price = DailyPrice.find(params[:id])

    respond_to do |format|
      if @daily_price.update_attributes(params[:daily_price])
        format.html { redirect_to @daily_price, :notice => 'Daily price was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @daily_price.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /daily_prices/1
  # DELETE /daily_prices/1.json
  def destroy
    @daily_price = DailyPrice.find(params[:id])
    @daily_price.destroy

    respond_to do |format|
      format.html { redirect_to daily_prices_url }
      format.json { head :no_content }
    end
  end
end
