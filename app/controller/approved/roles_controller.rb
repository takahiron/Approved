module Approved
  class RolesController < Approved::ApplicationController
    def index
      @roles = Role.all
    end

    def new
      @role = Role.new
    end

    def create
      role = Role.new(role_params)
      respond_to do |format|
        if role.save
          format.html {redirect_to roles_path()}
        else
          format.html {render action: 'new' }
        end
      end
    end

    def edit
      @role = Role.where(id: params[:id]).first
      @lines = Approved.get_routing
      # devise/session#action
      # 基本は
      # controller_name#action_name
      # この形で取得する
    end

    def update
      role = Role.where(id: params[:id]).first
      role.set_authority = params[:role][:authority]
      respond_to do |format|
        if role.save
          format.html {redirect_to edit_role_path(role)}
        else
        end
      end
    end

    def delete
      # exsample
      # get delete id
      # params -> role=> ["1","2"]
      respond_to do |format|
        format.html {redirect_to roles_path()}
      end
    end

    def role_params
      params.require(:role).permit(:name)
    end
  end
end
