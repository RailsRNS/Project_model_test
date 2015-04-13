class CreateSections < ActiveRecord::Migration
  def change
    create_table :sections do |t|
      t.references :course, index: :true
      t.string :name

      t.timestamps null: false
    end
  end
end
