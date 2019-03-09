# frozen_string_literal: true

class Users::RegistrationsController < Devise::RegistrationsController
  def link
  end

  def after_sign_up_path_for(resource)
    edit_user_path(current_user)
  end

end

