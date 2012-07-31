class CurrentSymbolsController < ApplicationController
  # GET /current_symbols
  # GET /current_symbols.json
  def index
    @current_symbols = CurrentSymbol.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @current_symbols }
    end
  end

  # GET /current_symbols/1
  # GET /current_symbols/1.json
  def show
    @current_symbol = CurrentSymbol.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @current_symbol }
    end
  end

  # GET /current_symbols/new
  # GET /current_symbols/new.json
  def new
    @current_symbol = CurrentSymbol.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @current_symbol }
    end
  end

  # GET /current_symbols/1/edit
  def edit
    @current_symbol = CurrentSymbol.find(params[:id])
  end

  # POST /current_symbols
  # POST /current_symbols.json
  def create
    @current_symbol = CurrentSymbol.new(params[:current_symbol])

    respond_to do |format|
      if @current_symbol.save
        format.html { redirect_to @current_symbol, :notice => 'Current symbol was successfully created.' }
        format.json { render :json => @current_symbol, :status => :created, :location => @current_symbol }
      else
        format.html { render :action => "new" }
        format.json { render :json => @current_symbol.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /current_symbols/1
  # PUT /current_symbols/1.json
  def update
    @current_symbol = CurrentSymbol.find(params[:id])

    respond_to do |format|
      if @current_symbol.update_attributes(params[:current_symbol])
        format.html { redirect_to @current_symbol, :notice => 'Current symbol was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @current_symbol.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /current_symbols/1
  # DELETE /current_symbols/1.json
  def destroy
    @current_symbol = CurrentSymbol.find(params[:id])
    @current_symbol.destroy

    respond_to do |format|
      format.html { redirect_to current_symbols_url }
      format.json { head :no_content }
    end
  end
end
