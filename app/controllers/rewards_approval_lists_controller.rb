class RewardsApprovalListsController < ApplicationController
  before_action :set_rewards_approval_list, only: %i[ show edit update destroy ]

  # GET /rewards_approval_lists or /rewards_approval_lists.json
  def index
    @rewards_approval_lists = RewardsApprovalList.all
  end

  # GET /rewards_approval_lists/1 or /rewards_approval_lists/1.json
  def show
  end

  # GET /rewards_approval_lists/new
  def new
    @rewards_approval_list = RewardsApprovalList.new
  end

  # GET /rewards_approval_lists/1/edit
  def edit
  end

  # POST /rewards_approval_lists or /rewards_approval_lists.json
  def create
    @rewards_approval_list = RewardsApprovalList.new(rewards_approval_list_params)

    respond_to do |format|
      if @rewards_approval_list.save
        format.html { redirect_to rewards_approval_list_url(@rewards_approval_list), notice: "Rewards approval list was successfully created." }
        format.json { render :show, status: :created, location: @rewards_approval_list }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @rewards_approval_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /rewards_approval_lists/1 or /rewards_approval_lists/1.json
  def update
    respond_to do |format|
      if @rewards_approval_list.update(rewards_approval_list_params)
        format.html { redirect_to rewards_approval_list_url(@rewards_approval_list), notice: "Rewards approval list was successfully updated." }
        format.json { render :show, status: :ok, location: @rewards_approval_list }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @rewards_approval_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rewards_approval_lists/1 or /rewards_approval_lists/1.json
  def destroy
    @rewards_approval_list.destroy

    respond_to do |format|
      format.html { redirect_to rewards_approval_lists_url, notice: "Rewards approval list was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rewards_approval_list
      @rewards_approval_list = RewardsApprovalList.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def rewards_approval_list_params
      params.require(:rewards_approval_list).permit(:reward_name, :UID)
    end
end
