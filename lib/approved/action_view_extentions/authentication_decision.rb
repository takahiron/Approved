module Approved
  module ActionViewExtentions
    module AuthenticationDecision
      include Approved::Authentication

      # option setting
      # example
      # url[:controller] = "myhomes"
      # url[:action] = "index"
      # get "myhomes#index"
      def decision?(url = {}, user_id = nil)
        if url[:controller].present? && url[:action].present?
          judgment("#{url[:controller]}##{url[:action]}", user_id)
        end
      end
    end
  end
end

ActionView::Base.send :include, Approved::ActionViewExtentions::AuthenticationDecision
