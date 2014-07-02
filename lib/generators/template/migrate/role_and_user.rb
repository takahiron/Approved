class ApprovedCreateRoleAndUser < ActiveRecord::Migration
  def change
    create_table(:approved_role_and_users) do |t|
      t.integer :user_id
      t.integer :role_id
    end
  end
end
