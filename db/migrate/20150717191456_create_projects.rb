class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.column :app, :string
      t.column :info, :string
      t.column :skill_id, :integer

      t.timestamps
    end
  end
end
