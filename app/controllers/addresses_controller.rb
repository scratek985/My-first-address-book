class AddressesController < ApplicationController
  # GET /addresses
  # GET /addresses.json
  
  def index
  	@group = Group.find(params[:group_id])
    @addresses = @group.addresses

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @addresses }
    end
  end

  # GET /addresses/1
  # GET /addresses/1.json
  def show
    @address = Address.find(params[:id])
    @email = Address.new(params[:email])
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @address }
    end
  end

  # GET /addresses/new
  # GET /addresses/new.json
  def new
	@address = Address.new
  	@group = Group.find(params[:group_id])
    @address.group = @group

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @address }
    end
  end

  # GET /addresses/1/edit
  def edit
    @address = Address.find(params[:id])
  end

  # POST /addresses
  # POST /addresses.json
  def create
    @address = Address.new(params[:address])
  	@group = Group.find(params[:group_id])
    @address.group = @group

    respond_to do |format|
      if @address.save
        format.html { redirect_to group_address_path(@address.group, @address), notice: 'Address was successfully created.' }
        format.json { render json: @address, status: :created, location: @address }
      else
        format.html { render action: "new" }
        format.json { render json: @address.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /addresses/1
  # PUT /addresses/1.json
  def update
    @address = Address.find(params[:id])
  	@group = Group.find(params[:group_id])
    @address.group = @group

    respond_to do |format|
      if @address.update_attributes(params[:address])
        format.html { redirect_to group_address_path(@address), notice: 'Address was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @address.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /addresses/1
  # DELETE /addresses/1.json
  def destroy
    @address = Address.find(params[:id])
    @address.destroy

    respond_to do |format|
      format.html { redirect_to group_addresses_path }
      format.json { head :no_content }
    end
  end
end
