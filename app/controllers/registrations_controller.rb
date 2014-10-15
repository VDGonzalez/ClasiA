class RegistrationsController < Devise::RegistrationsController
	
	private

	def sign_up_params
		params.require(:usuario).permit(:nombre, :apellido, :email, :email_confirmation, :password, :password_confirmation, :telefono, :telefono2, :alta, :dpto_mendoza_id)
	end
	
	def account_update_params
		params.require(:usuario).permit(:nombre, :apellido, :email, :password, :password_confirmation, :telefono, :telefono2, :current_password, :dpto_mendoza_id)
	end
	
end