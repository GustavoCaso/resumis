class CreateWorkExperiences < ActiveRecord::Migration
  def change
    create_table :work_experiences do |t|
      t.string :organization
      t.text :description
      t.date :start_date
      t.date :end_date

      t.timestamps
    end
  end
end
