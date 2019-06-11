class TeztRunsController < ApplicationController
  before_action :set_tezt_run, only: [:show, :edit, :update, :destroy]

  # GET /tezt_runs
  # GET /tezt_runs.json
  def index
    @tezt_runs = TeztRun.all
  end

  # GET /tezt_runs/1
  # GET /tezt_runs/1.json
  def show
  end

  # GET /tezt_runs/new
  def new
    @tezt_run = TeztRun.new
  end

  # GET /tezt_runs/1/edit
  def edit
  end

  # POST /tezt_runs
  # POST /tezt_runs.json
  def create
    @tezt_run = TeztRun.new(tezt_run_params)

    respond_to do |format|
      if @tezt_run.save
        format.html { redirect_to @tezt_run, notice: 'Tezt run was successfully created.' }
        format.json { render :show, status: :created, location: @tezt_run }
      else
        format.html { render :new }
        format.json { render json: @tezt_run.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tezt_runs/1
  # PATCH/PUT /tezt_runs/1.json
  def update
    respond_to do |format|
      if @tezt_run.update(tezt_run_params)
        format.html { redirect_to @tezt_run, notice: 'Tezt run was successfully updated.' }
        format.json { render :show, status: :ok, location: @tezt_run }
      else
        format.html { render :edit }
        format.json { render json: @tezt_run.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tezt_runs/1
  # DELETE /tezt_runs/1.json
  def destroy
    @tezt_run.destroy
    respond_to do |format|
      format.html { redirect_to tezt_runs_url, notice: 'Tezt run was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tezt_run
      @tezt_run = TeztRun.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tezt_run_params
      params.require(:tezt_run).permit(:status, :failure_id, :environment_id, :duration, :machine, :debug, :assets)
    end
end
