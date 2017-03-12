class UsersController < ApplicationController
  before_action :authenticate_user!

  def index
    @users = User.where.not("id = ?",current_user.id).where("role = ?", show_role).order("created_at DESC")
    @conversations = Conversation.involving(current_user).order("created_at DESC")
  end

  def show_role
    if current_user.role == 'USER'
      @show_role = 'TRAINER'
    elsif current_user.role == 'TRAINER'
      @show_role = 'USER'
    end
  end
end
