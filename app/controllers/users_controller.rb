# frozen_string_literal: true

class UsersController < ApplicationController
  def index
    @users = User.order(updated_at: :desc)
  end

  def show
    @user = User.find(params[:id])
  end
end
