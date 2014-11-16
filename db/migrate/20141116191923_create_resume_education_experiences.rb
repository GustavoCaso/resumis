class CreateResumeEducationExperiences < ActiveRecord::Migration
  def change
    create_table :resume_education_experiences do |t|
      t.references :resume, index: true
      t.references :education_experience, index: true

      t.timestamps
    end
  end
end
