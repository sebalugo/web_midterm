class CreateSubjects < ActiveRecord::Migration
  def change
    create_table :subjects do |t|
      t.string :name
      t.string :active
      t.integer :teacher_id
      t.integer :identity

      t.timestamps
    end
  end
end
