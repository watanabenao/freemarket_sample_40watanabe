class CreditCardsController < ApplicationController
  def new
  end

  def create
    CreditCard.create(credit_card_params)

    redirect_to signup_compleat_users_path
  end

  private
   def credit_card_params
     params.require(:credit_card).permit(:number, :month, :year, :security_code).merge(user_id: current_user.id)
   end
end
