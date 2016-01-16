class UsersController < Clearance::UsersController
	# def user_params
	# params.require(:user).permit(:email, :first_name, :last_name, :image)
	# end
	def user_from_params
    email = user_params.delete(:email)
    password = user_params.delete(:password)
    image = user_params.delete(:image)

    Clearance.configuration.user_model.new(user_params).tap do |user|
      user.email = email
      user.password = password
      user.image = image
    end
  end

  def show
    @user = User.find(params[:id])
  end
end