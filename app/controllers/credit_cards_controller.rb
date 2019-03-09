class CreditCardsController < ApplicationController
  def new
  end

  def create
    @card = CreditCard.new(credit_card_params)
    if  @card.save
      redirect_to signup_compleat_users_path
    else
      render :new
    end
  end

  private
   def credit_card_params
     params.require(:credit_card).permit(:number, :month, :year, :security_code).merge(user_id: current_user.id)
   end
end
