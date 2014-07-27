module Approved
  module Authentication
    class ActionBase
      include Approved::Authentication
      def decision(path, user_id = nil)
        judgment(path, user_id)
      end
    end
  end
end

require 'approved/authentication'
class ActionController::Base
  before_action :set_authentication
  def set_redirect_to(user_id = nil)
    authentication = Approved::Authentication::ActionBase.new
    path = "#{params[:controller]}##{params[:action]}"
    yield "tests params" unless authentication.decision(path, 1)
  end
end
