class Course < ActiveRecord::Base
  has_many :sections
  #has_many :sections, through: :course_sections
end
