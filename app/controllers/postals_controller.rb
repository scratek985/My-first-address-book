class PostalsController < ApplicationController
  # GET /postals
  # GET /postals.json
  def index
    @postals = Postal.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @postals }
    end
  end

  # GET /postals/1
  # GET /postals/1.json
  def show
    @postal = Postal.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @postal }
    end
  end

  # GET /postals/new
  # GET /postals/new.json
  def new
    @postal = Postal.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @postal }
    end
  end

  # GET /postals/1/edit
  def edit
    @postal = Postal.find(params[:id])
  end

  # POST /postals
  # POST /postals.json
  def create
    @postal = Postal.new(params[:postal])
    @postal.address_id = @address.id
    respond_to do |format|
      if @postal.save
        format.html { redirect_to @postal, notice: 'Postal was successfully created.' }
        format.json { render json: @postal, status: :created, location: @postal }
      else
        format.html { render action: "new" }
        format.json { render json: @postal.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /postals/1
  # PUT /postals/1.json
  def update
    @postal = Postal.find(params[:id])

    respond_to do |format|
      if @postal.update_attributes(params[:postal])
        format.html { redirect_to @postal, notice: 'Postal was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @postal.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /postals/1
  # DELETE /postals/1.json
  def destroy
    @postal = Postal.find(params[:id])
    @postal.destroy

    respond_to do |format|
      format.html { redirect_to postals_url }
      format.json { head :no_content }
    end
  end
end
