class SleepAlertsController < ApplicationController
  before_action :set_sleep_alert, only: [:show, :edit, :update, :destroy]

  # GET /sleep_alerts
  # GET /sleep_alerts.json
  def index
    @sleep_alerts = SleepAlert.all
  end

  # GET /sleep_alerts/1
  # GET /sleep_alerts/1.json
  def show
  end

  # GET /sleep_alerts/new
  def new
    @sleep_alert = SleepAlert.new
  end

  # GET /sleep_alerts/1/edit
  def edit
  end

  # POST /sleep_alerts
  # POST /sleep_alerts.json
  def create
    @sleep_alert = SleepAlert.new(sleep_alert_params)

    respond_to do |format|
      if @sleep_alert.save
        format.html { redirect_to @sleep_alert, notice: 'Sleep alert was successfully created.' }
        format.json { render :show, status: :created, location: @sleep_alert }
      else
        format.html { render :new }
        format.json { render json: @sleep_alert.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sleep_alerts/1
  # PATCH/PUT /sleep_alerts/1.json
  def update
    respond_to do |format|
      if @sleep_alert.update(sleep_alert_params)
        format.html { redirect_to @sleep_alert, notice: 'Sleep alert was successfully updated.' }
        format.json { render :show, status: :ok, location: @sleep_alert }
      else
        format.html { render :edit }
        format.json { render json: @sleep_alert.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sleep_alerts/1
  # DELETE /sleep_alerts/1.json
  def destroy
    @sleep_alert.destroy
    respond_to do |format|
      format.html { redirect_to sleep_alerts_url, notice: 'Sleep alert was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sleep_alert
      @sleep_alert = SleepAlert.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sleep_alert_params
      params.require(:sleep_alert).permit(:user_id, :bed_time, :wake_time)
    end
end
