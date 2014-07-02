class ApprovedCreateRoles < ActiveRecord::Migration
  def change
    create_table(:approved_roles) do |t|
      t.string :name
      t.text :authority
    end
  end
end
