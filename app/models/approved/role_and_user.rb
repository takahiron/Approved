module Approved
  class RoleAndUser < ::ActiveRecord::Base
    belongs_to :role
  end
end
