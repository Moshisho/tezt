class TeztRecordsController < ApplicationController
  before_action :set_tezt_record, only: [:show, :edit, :update, :destroy]

  # GET /tezt_records
  # GET /tezt_records.json
  def index
    @tezt_records = TeztRecord.all
  end

  # GET /tezt_records/1
  # GET /tezt_records/1.json
  def show
  end

  # GET /tezt_records/new
  def new
    @tezt_record = TeztRecord.new
  end

  # GET /tezt_records/1/edit
  def edit
  end

  # POST /tezt_records
  # POST /tezt_records.json
  def create
    @tezt_record = TeztRecord.new(tezt_record_params)

    respond_to do |format|
      if @tezt_record.save
        format.html { redirect_to @tezt_record, notice: 'Tezt record was successfully created.' }
        format.json { render :show, status: :created, location: @tezt_record }
      else
        format.html { render :new }
        format.json { render json: @tezt_record.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tezt_records/1
  # PATCH/PUT /tezt_records/1.json
  def update
    respond_to do |format|
      if @tezt_record.update(tezt_record_params)
        format.html { redirect_to @tezt_record, notice: 'Tezt record was successfully updated.' }
        format.json { render :show, status: :ok, location: @tezt_record }
      else
        format.html { render :edit }
        format.json { render json: @tezt_record.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tezt_records/1
  # DELETE /tezt_records/1.json
  def destroy
    @tezt_record.destroy
    respond_to do |format|
      format.html { redirect_to tezt_records_url, notice: 'Tezt record was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tezt_record
      @tezt_record = TeztRecord.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tezt_record_params
      params.require(:tezt_record).permit(:tezt_run_id, :name, :class_name, :tags, :active, :user_id, :team_id, :flaky, :risk, :avg_duration, :jira_test_id, :jira_bug_id)
    end
end
