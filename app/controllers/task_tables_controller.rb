class TaskTablesController < ApplicationController
  before_action :set_task_table, only: [:show, :edit, :update, :destroy]

  # GET /task_tables
  # GET /task_tables.json
  def index
    @task_tables = TaskTable.all
  end

  # GET /task_tables/1
  # GET /task_tables/1.json
  def show
  end

  # GET /task_tables/new
  def new
    @task_table = TaskTable.new
  end

  # GET /task_tables/1/edit
  def edit
  end

  # POST /task_tables
  # POST /task_tables.json
  def create
    @task_table = TaskTable.new(task_table_params)

    respond_to do |format|
      if @task_table.save
        format.html { redirect_to @task_table, notice: 'Task table was successfully created.' }
        format.json { render :show, status: :created, location: @task_table }
      else
        format.html { render :new }
        format.json { render json: @task_table.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /task_tables/1
  # PATCH/PUT /task_tables/1.json
  def update
    respond_to do |format|
      if @task_table.update(task_table_params)
        format.html { redirect_to @task_table, notice: 'Task table was successfully updated.' }
        format.json { render :show, status: :ok, location: @task_table }
      else
        format.html { render :edit }
        format.json { render json: @task_table.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /task_tables/1
  # DELETE /task_tables/1.json
  def destroy
    @task_table.destroy
    respond_to do |format|
      format.html { redirect_to task_tables_url, notice: 'Task table was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_task_table
      @task_table = TaskTable.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def task_table_params
      params.require(:task_table).permit(:product_id, :customer_id, :count, :special, :package, :shipment)
    end
end
