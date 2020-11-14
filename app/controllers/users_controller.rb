class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
  end

  def edit
    
  end

  def update
    if current_user.update(user_params)
      redirect_to user_path
    else
      render :edit
    end
  end

  private

  def user_params
    params.require(:user).permit(:nickname, :real_family_name, :real_last_name, :real_family_name_kana, :real_last_name_kana, :birth, :introduction)
  end

end
