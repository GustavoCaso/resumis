class EducationExperience < ActiveRecord::Base
  belongs_to :user
  has_many :resumes, through: :resume_education_experience

  acts_as_tenant(:user)

  default_scope { order(start_date: :asc, end_date: :asc) }

  validates :school_name, presence: true, length: { minimum: 5, maximum: 255 }
  validates :diploma, presence: true, length: { minimum: 2, maximum: 255 }
  validates :start_date, presence: true

  def date_range
    start_month_year = start_date.strftime('%B %Y')
    end_month_year = end_date ? end_date.strftime('%B %Y') : 'present'

    "#{start_month_year} — #{end_month_year}"
  end
end
