
class ThingsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_thing, only: [:show, :edit, :update, :destroy]
  before_action :authenticate, only: [:destroy, :edit]

  # GET /things
  # GET /things.json
  def index
    @things = Thing.all
  end

  def my_things
    @things = current_user.things.all
    # binding.pry
  end

  # GET /things/1
  # GET /things/1.json
  def show

  end

  # GET /things/new
  def new
    @thing = Thing.new
  end

  # GET /things/1/edit
  def edit
    # if @thing.user_id != current_user.id
    #     flash[:error]= "You don't have permission to do that"
    #       redirect_to things_path
    # end

  end

  # POST /things
  # POST /things.json
  def create
  
    thing_params = params.require(:thing).permit(:name, :description)
    @thing = current_user.things.create(thing_params)
   # @thing = Thing.create(thing_params)
    
    respond_to do |format|
      if @thing.save
        format.html { redirect_to @thing, notice: 'Thing was successfully created.' }
        format.json { render :show, status: :created, location: @thing }
      else
        format.html { render :new }
        format.json { render json: @thing.errors, status: :unprocessable_entity }
      end
    
   end
  end

  # PATCH/PUT /things/1
  # PATCH/PUT /things/1.json
  def update
    respond_to do |format|
      if @thing.update(thing_params)
        format.html { redirect_to @thing, notice: 'Thing was successfully updated.' }
        format.json { render :show, status: :ok, location: @thing }
      else
        format.html { render :edit }
        format.json { render json: @thing.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /things/1
  # DELETE /things/1.json
  def destroy

    @thing = Thing.find_by_id(params[:id])
    
   
      @thing.destroy
      respond_to do |format|
        format.html { redirect_to things_url, notice: 'Thing was successfully destroyed.' }
        format.json { head :no_content }
      end
   
  end

  
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_thing
      @thing = Thing.find(params[:id])
    end

    def authenticate
      if @thing.user_id != current_user.id
        flash[:error]= "You don't have permission to do that"
          redirect_to things_path
      end
    end

    def thing_params
      params.require(:thing).permit(:name, :description)
    end

end
