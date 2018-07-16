# frozen_string_literal: true

class ActivationsController < ApplicationController
  def show
    if (@user = User.load_from_activation_token(params[:id]))
      @token = params[:id]
    else
      not_authenticated
    end
  end

  def create
    @token = params[:user][:token]
    if (@user = User.load_from_activation_token(@token))
      if @user.update(params[:user])
        @user.activate!
        auto_login @user
        redirect_to @user, notice: 'Your account is now activated.'
      else
        render :show
      end
    else
      not_authenticated
    end
  end
end
