class DashboardsController < ApplicationController
  before_action :set_dashboard, only: [:show, :edit, :update, :destroy]

  # GET /dashboards
  # GET /dashboards.json
  def index

  end


  # GET /dashboards/1
  # GET /dashboards/1.json
  def show
  end

  # GET /dashboards/new
  def new

  end

  # GET /dashboards/1/edit
  def edit
  end

  # POST /dashboards
  # POST /dashboards.json
  def create
  end

  # PATCH/PUT /dashboards/1
  # PATCH/PUT /dashboards/1.json
  def update

  end

  # DELETE /dashboards/1
  # DELETE /dashboards/1.json
  def destroy

  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dashboard
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def dashboard_params
    end
end
