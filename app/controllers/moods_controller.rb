class MoodsController < ApplicationController
  # GET /moods
  # GET /moods.json
  def index
    @moods = Mood.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @moods }
    end
  end

  # GET /moods/1
  # GET /moods/1.json
  def show
    @mood = Mood.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @mood }
    end
  end

  # GET /moods/new
  # GET /moods/new.json
  def new
    @mood = Mood.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @mood }
    end
  end

  # GET /moods/1/edit
  def edit
    @mood = Mood.find(params[:id])
  end

  # POST /moods
  # POST /moods.json
  def create
    @mood = Mood.new(params[:mood])

    respond_to do |format|
      if @mood.save
        format.html { redirect_to @mood, notice: 'Mood was successfully created.' }
        format.json { render json: @mood, status: :created, location: @mood }
      else
        format.html { render action: "new" }
        format.json { render json: @mood.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /moods/1
  # PUT /moods/1.json
  def update
    @mood = Mood.find(params[:id])

    respond_to do |format|
      if @mood.update_attributes(params[:mood])
        format.html { redirect_to @mood, notice: 'Mood was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @mood.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /moods/1
  # DELETE /moods/1.json
  def destroy
    @mood = Mood.find(params[:id])
    @mood.destroy

    respond_to do |format|
      format.html { redirect_to moods_url }
      format.json { head :no_content }
    end
  end
end
