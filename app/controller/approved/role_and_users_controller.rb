require 'approved/models/user_source'

module Approved
  class RoleAndUsersController < Approved::ApplicationController
    include Approved::Config
    before_action :set_role
    def edit
      @role_and_user = RoleAndUser.where(role_id: params[:id])
      @checked = Hash.new
      @role_and_user.each do |i|
        @checked.store(i[:user_id],true)
      end
      @users = Approved::Models::UserSource.get_user
    end

    def update
      puts params.inspect
      role_and_user = RoleAndUser.where(role_id: params[:id]).load
      role_and_user.each do |i|
        i.destroy
      end
      params[:users].each do |user|
        created = RoleAndUser.new
        created.user_id = user.to_i
        created.role_id = params[:id]
        created.save
      end
      respond_to do |format|
        format.html {redirect_to(edit_role_and_user_path(@role)) }
      end
    end

    private
    def set_role
      @role = Role.find(params[:id])
      @user_id = self.user_id
      @user_name = self.user_name
    end
  end
end
