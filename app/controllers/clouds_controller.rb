class CloudsController < ApplicationController
  before_action :set_cloud, only: [:show, :edit, :update, :destroy]

  def index
    @clouds = Cloud.all
  end

  def show
  end

  def new
    @cloud = Cloud.new
  end

  def edit
  end

  def create
    @cloud = Cloud.new(cloud_params)

    respond_to do |format|
      if @cloud.save
        format.html { redirect_to @cloud, notice: 'Cloud was successfully created.' }
        format.json { render :show, status: :created, location: @cloud }
      else
        format.html { render :new }
        format.json { render json: @cloud.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @cloud.update(cloud_params)
        format.html { redirect_to @cloud, notice: 'Cloud was successfully updated.' }
        format.json { render :show, status: :ok, location: @cloud }
      else
        format.html { render :edit }
        format.json { render json: @cloud.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @cloud.destroy
    respond_to do |format|
      format.html { redirect_to clouds_url, notice: 'Cloud was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cloud
      @cloud = Cloud.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cloud_params
      params.fetch(:cloud, {})
    end
end
