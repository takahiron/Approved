require 'approved/config'

module Approved
  module Models
    class UserSource
      extend Config
      def self.get_user
        self.where_data
      end

      private
      def self.where_data
        self.user.classify.constantize.select(self.user_id, self.user_name)
      end

    end
  end
end
