module Userswitch
  class SwitchController < ApplicationController
    include Devise::Controllers::Helpers

    def switch_user
      sign_in(User.find(params[:id]))
      redirect_to :back
    end
  end
end
