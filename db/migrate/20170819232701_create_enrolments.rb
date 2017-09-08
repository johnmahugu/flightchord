class CreateEnrolments < ActiveRecord::Migration[5.1]
  def change
    create_table :enrolments do |t|

      t.timestamps
    end
  end
end
