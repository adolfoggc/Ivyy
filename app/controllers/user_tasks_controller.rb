class UserTasksController < ApplicationController
  before_action :authenticate_user!
  before_action :set_user_task, only: %i[ show edit update destroy ]

  # GET /user_tasks or /user_tasks.json
  def index
    @user_tasks = UserTask.all
  end

  # GET /user_tasks/1 or /user_tasks/1.json
  def show
  end

  # GET /user_tasks/new
  def new
    @user_task = UserTask.new
  end

  # GET /user_tasks/1/edit
  def edit
  end

  # POST /user_tasks or /user_tasks.json
  def create
    @user_task = UserTask.new(user_task_params)

    respond_to do |format|
      if @user_task.save
        format.html { redirect_to @user_task, notice: "User task was successfully created." }
        format.json { render :show, status: :created, location: @user_task }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @user_task.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /user_tasks/1 or /user_tasks/1.json
  def update
    respond_to do |format|
      if @user_task.update(user_task_params)
        format.html { redirect_to @user_task, notice: "User task was successfully updated." }
        format.json { render :show, status: :ok, location: @user_task }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @user_task.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_tasks/1 or /user_tasks/1.json
  def destroy
    @user_task.destroy
    respond_to do |format|
      format.html { redirect_to user_tasks_url, notice: "User task was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_task
      @user_task = UserTask.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def user_task_params
      params.require(:user_task).permit(:description, :active, :first_due, :repetition)
    end
end
