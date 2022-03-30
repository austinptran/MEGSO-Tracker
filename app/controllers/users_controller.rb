# frozen_string_literal: true

class UsersController < ApplicationController
  before_action :authorize_user, only: %i[show edit update destroy]
  before_action :set_user, only: %i[show edit update destroy]
  def show
    @user = User.find(params[:id])
  end

  def index
    @users = User.all
  end

  def new
    @user = User.new
    @user.points = 0
    @user.rewards_earned = 0
  end

  def edit; end

  def create
    @user = User.new(user_params)
    if @user.save
      log_in(@user)
      flash[:success] = 'Welcome to the Sample App!'
      redirect_to(events_path)
    else
      render('new')
    end
  end

  def update
    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to(users_url(@user), notice: 'User was successfully updated.') }
        format.json { render(:show, status: :ok, location: @user) }
      else
        format.html { render(:edit, status: :unprocessable_entity) }
        format.json { render(json: @user.errors, status: :unprocessable_entity) }
      end
    end
  end

  # DELETE /points/1 or /points/1.json
  def destroy
    @user.destroy!

    respond_to do |format|
      format.html { redirect_to(users_url, notice: 'User was successfully destroyed.') }
      format.json { head(:no_content) }
    end
  end

  private

  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :UID, :password,
                                 :password_confirmation, :points, :rewards_earned, :is_officer, :is_admin
    )
  end
end
