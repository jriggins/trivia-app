module Registration
  class UsersController < ApplicationController
    def create
      User.create(**create_params)
      render(json: {})
    end

    private

    def create_params
      params
        .require(:user)
        .permit(:username, :password)
    end
  end
end
