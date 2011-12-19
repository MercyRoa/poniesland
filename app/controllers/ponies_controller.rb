class PoniesController < ApplicationController
  # GET /ponies
  # GET /ponies.json
  def index
    @ponies = Pony.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @ponies }
    end
  end

  # GET /ponies/1
  # GET /ponies/1.json
  def show
    @pony = Pony.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @pony }
    end
  end

  # GET /ponies/new
  # GET /ponies/new.json
  def new
    @pony = Pony.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @pony }
    end
  end

  # GET /ponies/1/edit
  def edit
    @pony = Pony.find(params[:id])
  end

  # POST /ponies
  # POST /ponies.json
  def create
    @pony = Pony.new(params[:pony])

    respond_to do |format|
      if @pony.save
        t = Tweet.create(:status =>"Ya llegue al mundo magico de ponies", :pony_id => @pony[:id])

        format.html { redirect_to @pony, notice: 'Pony was successfully created.' }
        format.json { render json: @pony, status: :created, location: @pony }
      else
        format.html { render action: "new" }
        format.json { render json: @pony.errors, status: :unprocessable_entity }
      end
    

    end
  end

  # PUT /ponies/1
  # PUT /ponies/1.json
  def update
    @pony = Pony.find(params[:id])

    respond_to do |format|
      if @pony.update_attributes(params[:pony])
        format.html { redirect_to @pony, notice: 'Pony was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @pony.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ponies/1
  # DELETE /ponies/1.json
  def destroy
    @pony = Pony.find(params[:id])
    @pony.destroy

    respond_to do |format|
      format.html { redirect_to ponies_url }
      format.json { head :ok }
    end
  end
end
