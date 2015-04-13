class CreateSectionTeachers < ActiveRecord::Migration
  def change
    create_table :section_teachers do |t|
      t.belongs_to :section
      t.belongs_to :teacher

      t.timestamps null: false
    end
  end
end
