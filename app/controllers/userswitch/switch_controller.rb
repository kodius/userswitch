module Userswitch
  class SwitchController < ApplicationController
    include Devise::Controllers::Helpers
    before_action :authenticate_user!, except: [:switch_user]

    def switch_user
      sign_in(params[:role].constantize.find(params[:id]))
      redirect_to :back
    end
  end
end
