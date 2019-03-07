# frozen_string_literal: true

class Users::RegistrationsController < Devise::RegistrationsController
  def link
  end
 
  # def create
  #   if verify_recaptcha
  #     super
  #   else
  #     self.resource = resource_class.new
  #     respond_with_navigational(resource) { render :new }
  #   end
  # end

  def after_sign_up_path_for(resource)
    edit_user_path(current_user)
  end

end
