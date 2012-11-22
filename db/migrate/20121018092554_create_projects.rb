class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :name

      t.timestamps
    end
  end
  def down
    remove_column :projects, :name
  end
  def up
    add_column :projects, :name, :string
  end
end
