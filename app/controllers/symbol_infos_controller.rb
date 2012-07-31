class SymbolInfosController < ApplicationController
  # GET /symbol_infos
  # GET /symbol_infos.json
  def index
    @symbol_infos = SymbolInfo.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @symbol_infos }
    end
  end

  # GET /symbol_infos/1
  # GET /symbol_infos/1.json
  def show
    #@symbol_info = SymbolInfo.includes(:daily_prices).find(params[:id])
    @symbol_info = SymbolInfo.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @symbol_info }
    end
  end

  # GET /symbol_infos/new
  # GET /symbol_infos/new.json
  def new
    @symbol_info = SymbolInfo.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @symbol_info }
    end
  end

  # GET /symbol_infos/1/edit
  def edit
    @symbol_info = SymbolInfo.find(params[:id])
  end

  # POST /symbol_infos
  # POST /symbol_infos.json
  def create
    @symbol_info = SymbolInfo.new(params[:symbol_info])

    respond_to do |format|
      if @symbol_info.save
        format.html { redirect_to @symbol_info, :notice => 'Symbol info was successfully created.' }
        format.json { render :json => @symbol_info, :status => :created, :location => @symbol_info }
      else
        format.html { render :action => "new" }
        format.json { render :json => @symbol_info.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /symbol_infos/1
  # PUT /symbol_infos/1.json
  def update
    @symbol_info = SymbolInfo.find(params[:id])

    respond_to do |format|
      if @symbol_info.update_attributes(params[:symbol_info])
        format.html { redirect_to @symbol_info, :notice => 'Symbol info was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @symbol_info.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /symbol_infos/1
  # DELETE /symbol_infos/1.json
  def destroy
    @symbol_info = SymbolInfo.find(params[:id])
    @symbol_info.destroy

    respond_to do |format|
      format.html { redirect_to symbol_infos_url }
      format.json { head :no_content }
    end
  end
end
