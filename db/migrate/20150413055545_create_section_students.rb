class CreateSectionStudents < ActiveRecord::Migration
  def change
    create_table :section_students do |t|
      t.belongs_to :section
      t.belongs_to :student


      t.timestamps null: false
    end
  end
end
