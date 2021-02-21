class CreateJobs < ActiveRecord::Migration[6.1]
  def change
    create_table :jobs do |t|
      t.string :title
      t.string :date_posted
      t.string :location
      t.boolean :remote_friendly
      t.integer :salary_low
      t.integer :salary_high
      t.string :skill_pair

      t.timestamps
    end
  end
end
