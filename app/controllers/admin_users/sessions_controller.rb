# frozen_string_literal: true

class AdminUsers::SessionsController < Devise::SessionsController
  # before_action :configure_sign_in_params, only: [:create]

  # GET /resource/sign_in
  # def new
  #   super
  # end

  # POST /resource/sign_in
  # def create
  #   super
  # end

  # DELETE /resource/sign_out
  # def destroy
  #   super
  # end

  # protected

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_sign_in_params
  #   devise_parameter_sanitizer.permit(:sign_in, keys: [:attribute])
  # end


  after_action :create_crm_contact, only: [:create]

  private

  def create_crm_contact
    if admin_user_signed_in?
      Contact.create(name: "Contact Info", email: current_admin_user.email)
    end
  end
end

