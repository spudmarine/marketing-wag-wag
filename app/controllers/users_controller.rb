class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]

  # GET /users
  # GET /users.json


  # GET /users/1
  # GET /users/1.json
 
  # GET /users/new
  def new
    @user = User.new
  end

  # GET /users/1/edit

  # POST /users
  # POST /users.json
  def create
    @user = User.new(user_params)

    respond_to do |format|
      if @user.save
        format.html { redirect_to root_path, notice: "Thanks for signing up! We'll be in contact with you soon." }
        format.json { render json: @user, status: :created, location: @user }
      else
        format.html { render "static_page/home"}
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /users/1
  # PATCH/PUT /users/1.json


  # DELETE /users/1
  # DELETE /users/1.json


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params[:user].permit(:email, :first_name, :last_name, :zip_code, :phone)
    end
end
