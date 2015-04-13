class Teacher < ActiveRecord::Base

  has_many :section_teachers
  has_many :sections, through: :section_teachers
end
