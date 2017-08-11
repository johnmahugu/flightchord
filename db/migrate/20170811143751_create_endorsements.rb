class CreateEndorsements < ActiveRecord::Migration[5.1]
  def change
    create_table :endorsements do |t|

      t.timestamps
    end
  end
end
