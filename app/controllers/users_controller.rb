# frozen_string_literal: true

class UsersController < ApplicationController
  def index
    @users = User.order(updated_at: 'DESC').all
  end

  def show
    @user = User.find(params[:id])
  end
end
