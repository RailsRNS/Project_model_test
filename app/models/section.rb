class Section < ActiveRecord::Base

  validate :sec_check, presence: true

  belongs_to :course
  has_many :section_students
  has_many :students, through: :section_students

  has_many :section_teachers
  has_many :teachers, through: :section_teachers



  def sec_check
    # raise params.inspect
    puts "You have initialized an object!"
    c=Course.find(params[:course_id])
    s=c.sections
    if s.Count>1 && s.Count<3
      puts "Valid Value"
    else
      puts "Invalid value"
      return false

    end

  end
end
