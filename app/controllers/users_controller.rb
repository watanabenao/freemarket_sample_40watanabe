class UsersController < ApplicationController
  def index
  end

  def profile
  end

  def identification
  end

  def logout
  end

  def card
  end

  def edit
  end

  def update

    if current_user.update(user_params)
      redirect_to new_credit_card_path
    else
      render :edit
    end
  end

  def signup_compleat
  end

  private
    def user_params
      params.require(:user).permit(:last_name, :first_name, :last_name_kana, :first_name_kana, :postal_code, :prefecture, :city, :address, :building)
    end
end
