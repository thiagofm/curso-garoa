class XptosController < ApplicationController
  # GET /xptos
  # GET /xptos.json
  def index
    @xptos = Xpto.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @xptos }
    end
  end

  # GET /xptos/1
  # GET /xptos/1.json
  def show
    @xpto = Xpto.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @xpto }
    end
  end

  # GET /xptos/new
  # GET /xptos/new.json
  def new
    @xpto = Xpto.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @xpto }
    end
  end

  # GET /xptos/1/edit
  def edit
    @xpto = Xpto.find(params[:id])
  end

  # POST /xptos
  # POST /xptos.json
  def create
    @xpto = Xpto.new(params[:xpto])

    respond_to do |format|
      if @xpto.save
        format.html { redirect_to @xpto, notice: 'Xpto was successfully created.' }
        format.json { render json: @xpto, status: :created, location: @xpto }
      else
        format.html { render action: "new" }
        format.json { render json: @xpto.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /xptos/1
  # PUT /xptos/1.json
  def update
    @xpto = Xpto.find(params[:id])

    respond_to do |format|
      if @xpto.update_attributes(params[:xpto])
        format.html { redirect_to @xpto, notice: 'Xpto was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @xpto.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /xptos/1
  # DELETE /xptos/1.json
  def destroy
    @xpto = Xpto.find(params[:id])
    @xpto.destroy

    respond_to do |format|
      format.html { redirect_to xptos_url }
      format.json { head :no_content }
    end
  end
end
