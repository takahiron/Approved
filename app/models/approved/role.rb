module Approved
  class Role < ::ActiveRecord::Base
    has_many :role_and_users
    def set_authority=(var)
      auth = Hash.new
      var.each do |key|
        auth.store(key, true)
      end
      self.authority = auth.to_json
    end

    def get_authority
      self.authority.present? ? JSON.parse(self.authority): Hash.new
    end
  end
end
