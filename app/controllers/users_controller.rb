class UsersController < ApplicationController
  def new
    @user = User.new
  end
  
  def create
    @user = User.new(user_params)
    if @user.save
      log_in @user
      flash[:success] = "Welcome to Parker's domain!"
      redirect_to @user
    else
      flash[:danger] = "The was an error with you account submission..."
      render 'new'
    end
  end
  
  def show
    @user = User.find(params[:id])
  end
  
  def index
    
  end
  
  private
    def user_params
      params.require(:user).permit(:name, :email, :password, :password_confirmation) if params[:user]
    end
end
